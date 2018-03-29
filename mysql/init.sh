#!/usr/bin/env bash
set -x
TAG='notes-1.0'
PASSWORD='knkA9n7YnzvrDLE'
docker pull mysql:5.6
docker build -t mysql:${TAG} .
docker run -d --name mysql-server -p 3306:3306 mysql:${TAG}

sleep 10 # aguardando 10 seg para start servico
docker exec -i mysql-server service mysql status
sleep 5

docker exec -i mysql-server mysql -u root -p${PASSWORD} -h localhost notes < database.sql 2> /dev/null

docker ps -a