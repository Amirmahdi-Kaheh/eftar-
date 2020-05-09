FROM python:3.8.1

RUN apt-get update -y && apt-get install -y python-pip python-dev

COPY ./requirements.txt /app/requirements.txt

WORKDIR /app

RUN pip install -r requirements.txt

ENTRYPOINT [ "python3" ]

CMD [ "app.py" ]

