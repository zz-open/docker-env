#!/usr/bin/env bash

function CatHosts(){
  docker-compose exec lanmp-1-php-fpm bash -c "cat /etc/hosts"
}

CatHosts