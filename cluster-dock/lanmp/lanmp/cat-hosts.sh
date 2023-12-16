#!/usr/bin/env bash

function CatHosts(){
  docker-compose exec lanmp-2-php-fpm bash -c "cat /etc/hosts"
}

CatHosts