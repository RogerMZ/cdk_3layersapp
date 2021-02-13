FROM python:3.7-alpine3.11

ADD ./src /code

WORKDIR /code

RUN pip install -r dependences.txt

EXPOSE 3000

#CMD ["python", "WebService.py"]
CMD ["python", "app_redis.py"]

