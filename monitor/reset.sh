#!/usr/bin/env bash

function Rest(){
  docker-compose down && \
  rm -rf ./monitor/* && \
  docker-compose build
}

Rest