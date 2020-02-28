#!/bin/bash

# options pass at buildspec.yml
ECS_SERVICE=$1
DOCKER_CONTAINER=$2
S3_PATH=$3

gem install sonic-screwdriver --no-document
rbenv rehash

cd ..
tar -czf /tmp/code.tgz -C $CODEBUILD_SRC_DIR .
cd -

echo "aws s3 cp /tmp/code.tgz $S3_PATH/code.tgz"

# sonic execute --tags Name=backend-admin-box /opt/scripts/solo-ci.sh $ECS_SERVICE $DOCKER_CONTAINER $S3_PATH
