#!/bin/bash

source ../.env

set -x

gcloud config set deploy/region $REGION

#--region=$REGION
                         
gcloud beta deploy apply --file=clouddeploy.yaml \
                         --project=$PROJECT

gcloud beta deploy apply --file=delivery-pipeline.yaml && \
    gcloud beta deploy apply --file=targets/dev.yaml && \
    gcloud beta deploy apply --file=targets/staging.yaml && \
    gcloud beta deploy apply --file=targets/prod.yaml
# gcloud beta deploy apply --file=delivery-pipeline.yaml --region="$REGION" && \
#     gcloud beta deploy apply --file=target_dev.yaml --region="$REGION" && \
#     gcloud beta deploy apply --file=target_staging.yaml --region="$REGION" && \
#     gcloud beta deploy apply --file=target_prod.yaml --region="$REGION"