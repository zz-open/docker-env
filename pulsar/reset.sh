#!/usr/bin/env bash

function Reset(){
  docker-compose down && \
  rm -rf ./pulsar/data/* && \
  docker-compose build
}

Reset