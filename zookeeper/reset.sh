#!/bin/bash

function Reset(){
  docker-compose down && \
  rm -rf ./zookeeper/data && \
  rm -rf ./zookeeper/datalog && \
  docker-compose build zookeeper
}

Reset