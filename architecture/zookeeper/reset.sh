#!/bin/bash

function Reset(){
  docker-compose down && \
  rm -rf ./zookeeper1/data && \
  rm -rf ./zookeeper1/datalog && \
  rm -rf ./zookeeper2/data && \
  rm -rf ./zookeeper2/datalog && \
  rm -rf ./zookeeper3/data && \
  rm -rf ./zookeeper3/datalog && \
  docker-compose build --no-cache
}

Reset