#!/usr/bin/env bash
set -x
TAG='notes-1.0'
docker pull node:boron
docker build -t node:${TAG} .
docker run -d --name notes-api --link mysql-server:mysql-server -p 8080:8080 node:${TAG}

docker ps -a