#!/bin/bash

function Reset(){
  docker-compose down && \
  rm -rf ./zoo1/data && \
  rm -rf ./zoo1/datalog && \
  rm -rf ./zoo2/data && \
  rm -rf ./zoo2/datalog && \
  rm -rf ./zoo3/data && \
  rm -rf ./zoo3/datalog && \
  docker-compose build --no-cache
}

Reset