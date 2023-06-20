FROM python:3.12.0b2-slim-bullseye

LABEL maintainer="Chinedu Olebu"

ENV PYTHONUNBUFFERED=1




RUN apt-get update & adduser Chinedu

USER chinedu

COPY . /App

WORKDIR /App

EXPOSE 8000

RUN pip install --update pip && pip install -r requirements.txt 
RUN django-admin startproject core

RUN django-admin startapp mainapp

CMD ["python","manage.py","runserver","0.0.0.0:8000"]



