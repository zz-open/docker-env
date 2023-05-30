#!/usr/bin/env bash

function Reset(){
  docker-compose down && \
  rm -rf ./logs/* && \
  rm -rf ./data/* && \
  docker-compose build rabbitmq
}

Reset