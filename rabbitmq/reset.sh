#!/bin/bash

function Reset(){
  docker-compose down && \
  rm -rf ./logs/* && \
  rm -rf ./data/* && \
  docker-compose build rabbitmq && \
  docker-compose up -d rabbitmq
}

Reset