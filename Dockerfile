FROM python:3.7-slim

RUN mkdir -p /task/code
RUN mkdir -p /task/models

COPY . /task/code

WORKDIR /task/code

#ENV MODEL_NAME=iris_clf
#ENV MODEL_TAG=v1.0.2

#RUN apt-get update
    #&& apt-get upgrade  \
#    && apt-get install libc-dev -y \
#    && apt-get install libatlas-base-dev -y \
#    && pip install --upgrade pip \
#    && pip install bentoml==1.0.5 \
#    && pip install -r /task/code/requirements.txt

# iris_clf-v1.0.2.bentomodel

RUN apt-get update \
    && apt-get install -y curl

CMD ["sh", "./run.sh"]
