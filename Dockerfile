FROM python:3.7.7-buster

WORKDIR /usr/src/app

COPY requirements.txt ./
RUN pip install --no-cache-dir -r requirements.txt

COPY . .

EXPOSE 5002:5002
EXPOSE 5003:5003

CMD ["uwsgi", "--http", "0.0.0.0:5002", "--wsgi-file", "/usr/src/app/app.py", \
    "--ini", "/usr/src/app/uwsgi.ini", \
    "--callable", "app", "--stats", "0.0.0.0:5003"]