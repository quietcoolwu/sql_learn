#!/usr/bin/env bash

set -e
set -x

cd `dirname $0`
cd ..
PWD=`pwd`

docker stop sql_learn
# docker stop edge_mongo
# docker stop edge_mq

docker rm sql_learn
# docker rm edge_mongo
# docker rm edge_mq
