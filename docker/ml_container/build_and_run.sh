#!/usr/bin/env bash

# This script shows how to build the Docker image and push it to ECR to be ready for use
# by SageMaker.

# The argument to this script is the image name. This will be used as the image on the local
# machine and combined with the account and region to form the repository name for ECR.
image="flask_gunicorn_nginx_demo"

chmod +x train
chmod +x serve

docker build  -t ${image} .

docker run -p 8080:8080 ${image} serve