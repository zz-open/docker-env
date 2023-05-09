#!/bin/bash

function Reset(){
  docker-compose down && \
  rm -rf ./data/* && \
  docker-compose build beanstalkd && \
  docker-compose up -d beanstalkd
}

Reset