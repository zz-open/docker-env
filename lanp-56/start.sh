#!/usr/bin/env bash

source ./php-fpm/start.sh

function StartLANP56(){
  StartPhp56 && \
  sleep 2 && \
  cd /Users/xulei/jungle/docker-php56/container-env/lanp-56 && \
  docker-compose up -d apache2
}

StartLANP56