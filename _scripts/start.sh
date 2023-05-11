#!/usr/bin/env bash

function CreateNetwork() {
  docker network create --driver bridge  --subnet=172.19.0.0/16 --gateway=172.19.0.1 backend
}

function ResetDocker() {
  # 销毁容器
  docker-compose down
  # 重置网络
  docker network prune
  # 删除所有镜像
  docker images purge -a
  # 删除镜像、容器、卷和网络
  docker system prune -a
  # 删除卷宗
  docker volume prune
}

#ResetDocker
CreateNetwork