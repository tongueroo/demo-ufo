# Test Project for Demo

[![BoltOps Badge](https://img.boltops.com/boltops/badges/boltops-badge.png)](https://www.boltops.com)

This project contains a small sinatra app that prints out some text.  It listens on the default 8080 port.

## Testing Locally with Mac OSX

    $ git clone https://github.com/tongueroo/demo-ufo
    $ cd demo-ufo
    $ bundle
    $ ruby hi.rb

## Testing Locally with Docker

The app is also dockerized so you can test this via docker.

    $ docker build -t tongueroo/demo-ufo . # you can skip this step if you want to just pull the image from DockerHub.
    $ docker run --rm -d -p 8080:8080 --name demo tongueroo/demo-ufo
    $ curl localhost:8080
    42
    $ docker stop demo
    hi
    $

This demo project is use to demonstrate ufo. More info here: http://ufoships.com/quick-start/
