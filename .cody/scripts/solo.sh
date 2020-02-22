#!/bin/bash

AWS_REGION=`curl -s http://169.254.169.254/latest/dynamic/instance-identity/document|grep region|awk -F\" '{print $4}'`
export AWS_REGION
solo deploy demo-web-development --force-new
# uptime
docker exec ecs-demo-web-web git branch
echo test4
