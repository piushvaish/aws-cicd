FROM python:stretch
FROM tiangolo/uwsgi-nginx-flask:python3.7

COPY . /app
WORKDIR /app

RUN pip install --upgrade pip
RUN pip install -r requirements.txt

ENTRYPOINT ["gunicorn", "-b", ":80", "main:APP"]