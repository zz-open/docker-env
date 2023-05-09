#!/usr/bin/env bash

function StopPhp74() {
  cd /Users/xulei/jungle/docker-php56/container-env/lanp-74/php-fpm
  docker-compose stop
}