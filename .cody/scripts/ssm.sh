#!/bin/bash

ECS_SERVICE=$1
DOCKER_CONTAINER=$2

gem install sonic-screwdriver --no-document
rbenv rehash
sonic execute --tags Name=backend-admin-box /opt/scripts/solo-ci.sh $ECS_SERVICE $DOCKER_CONTAINER
