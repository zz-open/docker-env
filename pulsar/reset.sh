#!/bin/bash

function Reset(){
  docker-compose down && \
  rm -rf ./pulsar/data/* && \
  docker-compose build && \
  docker-compose up -d
}

Reset