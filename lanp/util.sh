#!/usr/bin/env bash

function LookHosts(){
  docker-compose exec php-fpm bash -c "cat /etc/hosts"
}

function renameContainer() {
  docker rename php-fpm php-fpm74
}

LookHosts
