#!/usr/bin/env bash

function StartPhp56(){
  cd /Users/xulei/jungle/docker-php56/container-env/lanp/php-fpm/php56
  docker-compose up -d php-fpm
}

function StartPhp74() {
  cd cd /Users/xulei/jungle/docker-php56/container-env/lanp/php-fpm/php74
  docker-compose up -d php-fpm
}

function StartPhp80() {
  cd cd /Users/xulei/jungle/docker-php56/container-env/lanp/php-fpm/php80
  docker-compose up -d php-fpm
}