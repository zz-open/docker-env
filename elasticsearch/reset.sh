#!/bin/bash

function ResetElasticSearch(){
  docker-compose stop elasticsearch && \
  docker-compose rm -f elasticsearch && \
  rm -rf ./elasticsearch/data && \
  docker-compose build --no-cache
}

function ResetKibana(){
  docker-compose stop kibana && \
  docker-compose rm -f kibana && \
  rm -rf ./kibana/data && \
  docker-compose build --no-cache
}

ResetElasticSearch
ResetKibana