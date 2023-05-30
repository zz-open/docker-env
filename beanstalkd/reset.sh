#!/usr/bin/env bash

function Reset(){
  docker-compose down && \
  rm -rf ./data/* && \
  docker-compose build beanstalkd
}

Reset