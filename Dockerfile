# syntax=docker/dockerfile:1

FROM python:3.8-slim-buster

WORKDIR /app


COPY . /app/

RUN pip3 install -r requirements.txt

EXPOSE 5000

COPY . .

CMD [ "python3", "main.py", "run", "--host=192.168.1.80:5000"]