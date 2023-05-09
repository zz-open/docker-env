#!/usr/bin/env bash

source ./php-fpm/stop.sh

function StopLANP56(){
  StopPhp56 && \
  sleep 2 && \
  cd /Users/xulei/jungle/docker-php56/container-env/lanp-56 && \
  docker-compose stop
}

StopLANP56