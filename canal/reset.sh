#!/bin/bash

function Reset(){
  docker-compose down && \
  rm -rf ./data/* && \
  rm -rf ./conf/* && \
  docker-compose build && \
  docker-compose up -d
}

Reset