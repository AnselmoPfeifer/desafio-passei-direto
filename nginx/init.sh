#!/usr/bin/env bash
set -x
TAG='notes-1.0'
docker pull nginx
docker build -t nginx:${TAG} .
docker run -d --name proxy-api --link notes-api:notes-api -p 80:80 nginx:${TAG}

docker ps -a