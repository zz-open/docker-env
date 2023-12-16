#!/usr/bin/env bash

function Reset() {
   docker-compose down && \
     rm -rf ./kafka1/data && \
     rm -rf ./kafka2/data && \
     rm -rf ./kafka3/data && \
     rm -rf ./zookeeper/data && \
     rm -rf ./zookeeper/datalog && \
     docker-compose build --no-cache
}

Reset