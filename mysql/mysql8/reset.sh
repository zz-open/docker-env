#!/bin/bash

function Reset(){
  docker-compose down && \
  rm -rf ./data/* && \
  rm -rf ./logs/* && \
  docker-compose build mysql8 && \
  docker-compose up -d mysql8
}

Reset