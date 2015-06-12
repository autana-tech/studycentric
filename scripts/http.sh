#!/bin/bash

APP_DIR=/opt/app/

exec /usr/local/bin/uwsgi --die-on-term --http-socket 0.0.0.0:8000 -p 4 -b 32768 -T --master --max-requests 5000 --static-map /static=/opt/app/_site/static --module wsgi:application
