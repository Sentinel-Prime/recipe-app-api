FROM python:3.7-alpine
MAINTAINER Sandeep singh

ENV PYTHONUNBUFFERED 1

COPY ./requirenment.txt /requirenment.txt
RUN pip install -r /requirenment.txt
WORKDIR /app
COPY ./app /app

RUN adduser -D user
USER user
