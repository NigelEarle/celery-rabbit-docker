#!/bin/sh

# wait for Rabbitmq server to start
sleep 10

cd celery-rabbit-docker

# run Celery worker for project with Celery config stored in celery conf
su -m myuser -c "celery worker -A celery-rabbit-docker.celeryconf -Q default -n default@%h"