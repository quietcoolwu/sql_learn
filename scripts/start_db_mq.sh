#!/usr/bin/env bash

set -e
set -x

cd `dirname $0`
cd ..
PWD=`pwd`

[ ! "$(docker ps -a | grep sql_learn)" ] && docker run --name sql_learn -v /var/lib/mysql -v $PWD/misc/sql/create.sql:/docker-entrypoint-initdb.d/init.sql -e MYSQL_DATABASE=demo -e MYSQL_ROOT_PASSWORD=demo -p 4306:3306 -d mysql:5.7

[ ! "$(docker ps -a | grep mongo_learn)" ] && docker run --name mongo_learn -p 37017:27017 -d mongo:3

# [ ! "$(docker ps -a | grep edge_mq)" ] && docker run --name edge_mq -e RABBITMQ_DEFAULT_USER=rabbitmq -e RABBITMQ_DEFAULT_PASS=rabbitmq -e RABBITMQ_DEFAULT_VHOST=vhost -p 5673:5672 -p 15673:15672 -d rabbitmq:3-management
