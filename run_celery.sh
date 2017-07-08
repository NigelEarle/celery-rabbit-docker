#!/bin/sh

# wait for Rabbitmq server to start
sleep 10

cd src
# run Celery worker for project with Celery config stored in celery conf
su -m myuser -c "celery worker -A src -Q default -n default@%h"