#!/bin/bash

function Reset(){
  docker-compose down && \
  rm -rf ./logs/* && \
  docker-compose build apache2 && \
  docker-compose up -d apache2
}

Reset