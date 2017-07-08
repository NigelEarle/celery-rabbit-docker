#!/bin/sh

# wait for PSQL server to start
sleep 10

# init migration
su -m myuser -c "python src/manage.py makemigrations"

# migrate db
su -m myuser -c "python src/manage.py migrate"

#start development server
su -m myuser -c "python src/manage.py runserver 0.0.0.0:8000"