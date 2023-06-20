FROM python:3.12.0b2-slim-bookworm

LABEL maintainer="Chinedu Olebu"

ENV PYTHONUNBUFFERED 1

RUN adduser chinedu

USER chinedu

COPY . /App

WORKDIR /App

EXPOSE 8000

CMD ["python","manage.py","runserver","0.0.0.0:8000"]



