#!/usr/bin/env bash

function StopPhp56() {
  cd /Users/xulei/jungle/docker-php56/container-env/lanp-56/php-fpm
  docker-compose stop
}