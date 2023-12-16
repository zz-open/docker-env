#!/usr/bin/env bash

function EnterContainer(){
  docker exec -it lanmp-1-php-fpm bash
}

EnterContainer