#!/bin/bash

function Rest(){
  docker-compose down && \
  rm -rf ./data/* && \
  rm -rf ./logs/* && \
  docker-compose build nacos && \
  docker-compose up -d nacos
}

Rest