#!/usr/bin/env bash

function LookHosts(){
  docker-compose exec php-fpm-74 bash -c "cat /etc/hosts"
}

function renameContainer() {
  docker rename php-fpm php-fpm-74
}

LookHosts
