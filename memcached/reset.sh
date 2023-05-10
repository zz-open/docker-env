#!/bin/bash

function Reset(){
  docker-compose down && \
  rm -rf ./data/* && \
  docker-compose build memcached && \
  docker-compose up -d memcached
}

Reset