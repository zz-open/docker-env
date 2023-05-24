#!/bin/bash

function EnterContainer(){
  docker exec -it lanmp-2-php-fpm bash
}

EnterContainer