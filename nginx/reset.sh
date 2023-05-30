#!/usr/bin/env bash

function Reset(){
  docker-compose down && \
  rm -rf ./logs/* && \
  docker-compose build nginx
}

Reset