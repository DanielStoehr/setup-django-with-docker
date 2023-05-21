FROM python:3.11-alpine

RUN pip install --upgrade pip

WORKDIR /app

COPY ./requirements.txt .
RUN pip install -r requirements.txt

COPY ./django_project /app

COPY ./entrypoint.sh /
ENTRYPOINT ["sh", "/entrypoint.sh"]