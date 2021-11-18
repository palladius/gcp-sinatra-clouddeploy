#!/bin/bash

source ../.env

 gcloud projects add-iam-policy-binding $PROJECT_ID \
     --member=serviceAccount:$(gcloud projects describe PROJECT_ID \
     --format="value(projectNumber)")-compute@developer.gserviceaccount.com \
     --role="roles/clouddeploy.jobRunner"

