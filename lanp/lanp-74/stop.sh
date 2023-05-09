#!/usr/bin/env bash

source ./php-fpm/stop.sh

function StopLANP74(){
  StopPhp74 && \
  sleep 2 && \
  cd /Users/xulei/jungle/docker-php56/container-env/lanp-74 && \
  docker-compose stop
}

StopLANP74