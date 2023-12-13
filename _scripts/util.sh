#!/usr/bin/env bash

dockerReset() {
  # 全部重置
  docker system prune -a
  docker network prune -a
  docker images purge -a
  docker volume prune -a
}