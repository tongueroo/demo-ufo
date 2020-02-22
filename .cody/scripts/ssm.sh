#!/bin/bash

gem install sonic-screwdriver --no-document
rbenv rehash
sonic execute backend-admin file://.cody/scripts/solo.sh
