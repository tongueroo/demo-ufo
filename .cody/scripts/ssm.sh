#!/bin/bash

# options pass at buildspec.yml
ECS_SERVICE=$1
DOCKER_CONTAINER=$2
S3_PATH=$3

gem install sonic-screwdriver --no-document
rbenv rehash

# Copy code to s3 for later download
tar -czf /tmp/code.tgz -C $CODEBUILD_SRC_DIR .
set -x
aws s3 cp /tmp/code.tgz $S3_PATH/code.tgz

sonic execute --tags Name=backend-admin-box /usr/local/bin/ecs-deploy-ci $ECS_SERVICE $DOCKER_CONTAINER $S3_PATH
