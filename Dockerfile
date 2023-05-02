FROM python:3.9-alpine

COPY ./src /app

WORKDIR /app

RUN pip install -r requirements.txt

RUN flask initdb

RUN flask translate compile

EXPOSE 5000

CMD ["flask", "run", "--host", "0.0.0.0"]
