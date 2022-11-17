#!/bin/bash

MODEL_DIR=/task/models
S3_MODEL_DIR="${MODEL_NAME}/${MODEL_VERSION}"
MODEL_FULLNAME="${MODEL_NAME}-${MODEL_VERSION}.bentomodel"

pip install --upgrade pip \
pip install bentoml==1.0.5 \
pip install -r /task/code/requirements.txt

#sh ./model_download.sh ${AI_SERVICE_BUCKET} \
#                        ${AWS_REGION} \
#                        ${S3_MODEL_DIR}/${MODEL_FULLNAME} \
#                        ${MODEL_DIR}/${MODEL_FULLNAME}

# MODEL IMPORT
bentoml models import ${MODEL_DIR}/${MODEL_FULLNAME}

# if success remove model

# SERVING
bentoml serve service:svc
