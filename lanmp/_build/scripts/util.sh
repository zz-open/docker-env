#!/usr/bin/env bash

function LookHosts(){
  docker-compose exec php-fpm-56 bash -c "cat /etc/hosts"
}

function renameContainer() {
  docker rename php-fpm php-fpm-56
}

LookHosts
