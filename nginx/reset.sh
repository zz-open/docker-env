#!/bin/bash

function Reset(){
  docker-compose down && \
  rm -rf ./logs/* && \
  docker-compose build nginx && \
  docker-compose up -d nginx
}

Reset