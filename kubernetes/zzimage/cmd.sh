#!/usr/bin/env bash

docker build -t zz-hello:v3.0.0 .
docker tag zz-hello:v3.0.0 zz.harbor.com/zz/zz-hello:v3.0.0
docker push zz.harbor.com/zz/zz-hello:v3.0.0