#!/usr/bin/env bash

function EnterContainer(){
  docker exec -it python /bin/bash
#  docker-compose exec python bash
}

EnterContainer