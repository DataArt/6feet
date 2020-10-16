from flask import Flask, request
from flask import jsonify
from flask_cors import CORS
from pymongo import MongoClient
import datetime
import json
import logging
from logging.config import dictConfig
import os
from api import utils

app = Flask(__name__)
cors = CORS(app, resources={r"/*": {"origins": "*"}})


def init_db():
    host = 'mongodb'
    db_username = os.environ.get('SD_DB_USERNAME')
    db_password = os.environ.get('SD_DB_PASSWORD')
    connection_row = 'mongodb://' + db_username + ':' + db_password + '@' + host + ':27017'
    client = MongoClient(connection_row, connect=False)
    app.logger.info("Connecting to DB")
    app.logger.info(client)
    db = client.hackaton2020
    app.logger.info(db)
    locations = db.locations
    app.logger.info(locations)
    return (db, locations)

db, locations_collection = init_db()

def isInsideRectangle(x1, y1, x2, y2, x, y):
    if (x > x1 and x < x2 and y > y1 and y < y2):
        return True
    else:
        return False


@app.route("/all_locations", methods=['GET'])
def all_locations():
    if not utils.is_valid_key(request.headers['key']):
        return 'bad request!', 400
    else:
        try:
            cursor = locations_collection.find({})
            all_locaitons = []
            for document in cursor:
                all_locaitons.append({
                    "latitude": document["latitude"],
                    "longitude": document["longitude"],
                    "time": document["time"]
                })
            return jsonify(all_locaitons)
        except Exception as e:
            logging.error(e, exc_info=True)
            return 'Wrong request! Please check params', 500


@app.route("/location_by_position", methods=['POST'])
def location_by_position():
    if not utils.is_valid_key(request.headers['key']):
        return 'bad request!', 400
    else:
        try:
            request_json = request.get_json()
            x1 = request_json['latitude1']
            y1 = request_json['longitude1']
            x2 = request_json['latitude2']
            y2 = request_json['longitude2']
            cursor = locations_collection.find({})
            all_locaitons = []
            for document in cursor:
                latitude = document["latitude"]
                longitude = document["longitude"]
                time = document["time"]
                if (isInsideRectangle(x1, y1, x2, y2, latitude, longitude)):
                    all_locaitons.append({
                        "latitude": latitude,
                        "longitude": longitude,
                        "time": time
                    })
            return jsonify(all_locaitons)
        except Exception as e:
            logging.error(e, exc_info=True)
            return 'Wrong request! Please check params', 500


@app.route("/location_by_position_and_time", methods=['POST'])
def location_by_position_and_time():
    if not utils.is_valid_key(request.headers['key']):
        return 'bad request!', 400
    else:
        try:
            request_json = request.get_json()
            x1 = request_json['latitude1']
            y1 = request_json['longitude1']
            x2 = request_json['latitude2']
            y2 = request_json['longitude2']
            timeFrom = request_json['timeFrom']
            timeFrom = datetime.datetime.fromtimestamp(timeFrom)
            cursor = locations_collection.find({})
            all_locaitons = []
            for document in cursor:
                latitude = document["latitude"]
                longitude = document["longitude"]
                time = document["time"]
                if (isInsideRectangle(x1, y1, x2, y2, latitude, longitude)) and time > timeFrom:
                    all_locaitons.append({
                        "latitude": latitude,
                        "longitude": longitude,
                        "time": time
                    })
            return jsonify(all_locaitons)
        except Exception as e:
            logging.error(e, exc_info=True)
            return 'Wrong request! Please check params', 500


@app.route("/location", methods=['POST'])
def create_location():
    if not utils.is_valid_key(request.headers['key']):
        return 'bad request!', 400
    else:
        try:
            input_json = request.json
            entity = {
                "latitude": input_json["latitude"],
                "longitude": input_json["longitude"],
                "time": datetime.datetime.now(),
            }
            locations_collection.insert_one(entity.copy())
            return jsonify(entity)
        except Exception as e:
            logging.error(e, exc_info=True)
            return 'Wrong request! Please check params', 500


@app.route("/healthcheck", methods=['GET'])
def healthcheck():
    return jsonify({
        "status": "active"
    })


if __name__ == "__main__":
    app.run(host="0.0.0.0", port=5002)
