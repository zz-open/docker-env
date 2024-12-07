#!/usr/bin/env bash

function Reset(){
  docker-compose down && \
  docker-compose build python
}

Reset