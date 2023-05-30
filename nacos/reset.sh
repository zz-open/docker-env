#!/usr/bin/env bash

function Rest(){
  docker-compose down && \
  rm -rf ./data/* && \
  rm -rf ./logs/* && \
  docker-compose build
}

Rest