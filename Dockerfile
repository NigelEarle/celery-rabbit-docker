# use base python image python 2.7
FROM python:2.7

# add requirements.txt to the image
ADD requirements.txt /app/requirements.txt

ADD run_web.sh /app/run_web.sh

RUN chmod +x /app/run_web.sh

# set working directory
WORKDIR /app/

# install python dependencies
RUN pip install -r requirements.txt

# create unpriviledged user
RUN adduser --disabled-password --gecos '' myuser