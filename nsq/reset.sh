#!/bin/bash

function Reset(){
  docker-compose down && \
  rm -rf ./data/* && \
  docker-compose build && \
  docker-compose up -d
}

Reset