import os

SECRET_KEY = os.environ.get('SD_SECRET_KEY')

def is_valid_key(key):
    return key == SECRET_KEY