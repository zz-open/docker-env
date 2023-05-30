#!/usr/bin/env bash

function CreateNetwork() {
  docker network create --driver bridge --subnet=172.19.0.0/16 --gateway=172.19.0.1 backend
}

function ResetDocker() {
  // 全部重置
  docker system prune -a
  docker network prune -a
  docker images purge -a
  docker volume prune -a
}

#ResetDocker
#CreateNetwork