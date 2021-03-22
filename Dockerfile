FROM python:3

MAINTAINER BOCO

ENV PYTHONUNBUFFERED 1

COPY ./requirements.txt /requirements.txt
RUN pip install -r /requirements.txt


RUN mkdir /app

WORKDIR /app
COPY ./app /app

RUN useradd -ms /bin/bash  user

USER user
