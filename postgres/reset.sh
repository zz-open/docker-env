#!/bin/bash

function Reset(){
  docker-compose down && \
  rm -rf ./data/* && \
  docker-compose build postgres && \
  docker-compose up -d postgres
}

Reset