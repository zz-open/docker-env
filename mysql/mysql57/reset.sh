#!/bin/bash

function Reset(){
  docker-compose down && \
  rm -rf ./data/* && \
  rm -rf ./logs/* && \
  docker-compose build mysql57 && \
  docker-compose up -d mysql57
}

Reset