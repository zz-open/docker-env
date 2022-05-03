#!/usr/bin/env bash

function LookHosts(){
  docker-compose exec php-fpm-80 bash -c "cat /etc/hosts"
}

function renameContainer() {
  docker rename php-fpm php-fpm-80
}

LookHosts
