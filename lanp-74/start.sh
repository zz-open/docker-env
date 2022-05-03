#!/usr/bin/env bash

source ./php-fpm/start.sh

function StartLANP74(){
  StartPhp74 && \
  sleep 2 && \
  cd /Users/xulei/jungle/docker-php56/container-env/lanp-74 && \
  docker-compose up -d nginx
}

StartLANP74