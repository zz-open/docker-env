#!/bin/bash

function Reset(){
  docker-compose down && \
  docker-compose build python && \
  docker-compose up -d python
}

Reset