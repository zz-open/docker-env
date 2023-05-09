#!/bin/bash

function Reset(){
  docker-compose down && \
  rm -rf ./data/* && \
  rm -rf ./logs/* && \
  docker-compose build caddy && \
  docker-compose up -d caddy
}

Reset