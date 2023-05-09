#!/bin/bash

function Reset(){
  docker-compose down && \
  rm -rf ./logs/* && \
  docker-compose build resty && \
  docker-compose up -d resty
}

Reset