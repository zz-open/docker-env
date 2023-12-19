#!/usr/bin/env bash

function Reset(){
  docker-compose down && \
  rm -rf ./data/* && \
  rm -rf ./conf/* && \
  docker-compose build
}

Reset