#!/bin/bash

gem install sonic --no-document
rbenv rehash
sonic execute backend-admin file://.cody/scripts/solo.sh
