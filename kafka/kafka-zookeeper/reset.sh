#!/usr/bin/env bash

function Reset() {
   docker-compose down && \
     rm -rf ./kafka/data && \
     rm -rf ./zookeeper/data && \
     rm -rf ./zookeeper/datalog && \
     docker-compose build --no-cache
}

Reset