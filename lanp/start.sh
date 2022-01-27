#!/usr/bin/env bash

source ./php-fpm/start.sh

function StartLANP56(){
  StartPhp56 && \
  sleep 2 && \
  docker-compose up -d apache2
}

function StartLANP74(){
  StartPhp74 && \
  sleep 2 && \
  docker-compose up -d apache2
}

function StartLANP80(){
  StartPhp80 && \
  sleep 2 && \
  docker-compose up -d apache2
}

StartLANP56