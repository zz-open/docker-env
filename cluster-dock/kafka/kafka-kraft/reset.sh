#!/usr/bin/env bash

function Reset() {
   docker-compose down && \
     rm -rf ./kafka/data && \
     docker-compose build --no-cache
}

Reset