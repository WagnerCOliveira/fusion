# pull official base image
FROM python:3.8

# set work directory
RUN mkdir /fusion
WORKDIR /fusion

# set environment variables
ENV PYTHONUNBUFFERED 1

# install mysqlclient
ADD requirements.txt /fusion/

# install dependencies
RUN pip install --upgrade pip
RUN pip install -r requirements.txt

# copy project
ADD . /fusion/
