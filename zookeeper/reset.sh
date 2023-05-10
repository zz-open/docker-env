#!/bin/bash

function Reset(){
  docker-compose down && \
  rm -rf ./data/* && \
  rm -rf ./datalog/* && \
  docker-compose build zookeeper && \
  docker-compose up -d zookeeper
}

Reset