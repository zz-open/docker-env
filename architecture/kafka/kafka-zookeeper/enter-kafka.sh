#!/usr/bin/env bash

function EnterContainer(){
  local containerName=${1:?"请输入容器名称"}
  docker exec -it ${containerName} bash
}

EnterContainer $1