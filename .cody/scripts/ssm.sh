#!/bin/bash

gem install sonic-screwdriver --no-document
rbenv rehash
sonic execute --tags Name=backend-admin file://.cody/scripts/solo.sh
