#!/bin/bash

function Reset(){
  docker-compose down && \
  rm -rf ./data/* && \
  rm -rf ./logs/* && \
  docker-compose build clickhouse && \
  docker-compose up -d clickhouse
}

Reset