#!/bin/bash

function Reset(){
  docker-compose down && \
  rm -rf ./data/* && \
  rm -rf ./logs/* && \
  docker-compose build tomcat && \
  docker-compose up -d tomcat
}

Reset