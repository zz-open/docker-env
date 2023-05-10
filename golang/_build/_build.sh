#!/usr/bin/env bash

#此脚本用来构建go不同版本，通过network external链接其他容器,即使不在一个compose文件也可以互相通信

composeYmlPath="./compose.yml"
buildPath=$(pwd)
go117Path=/../buildPath
go118Path=/../buildPath

#mac环境下 sed -i 后边必须加""表示备份文件的扩展名，不备份就填空

function build117() {
  cd ${buildPath} && \
  cp -rp ./.env ../go117/ && \
  cp -rp ./docker-compose.yml.example ../go117/docker-compose.yml && \
  sed -i "" "s/GOLANG_VERSION=请填写版本/GOLANG_VERSION=1.17.6/" ../go117/.env && \
  sed -i "" "s/container_name: 请填写容器名/container_name: go117/" ../go117/docker-compose.yml && \
  sed -i "" "s/ hostname: 请填写hostname/ hostname: go117/" ../go117/docker-compose.yml && \
  cd ${go117Path} && \
  docker-compose build
}

function build118() {
  cd ${buildPath} && \
  cp -rp ./.env ../go118/ && \
  cp -rp ./docker-compose.yml.example ../go118/docker-compose.yml && \
  sed -i "" "s/GOLANG_VERSION=请填写版本/GOLANG_VERSION=latest/" ../go118/.env && \
  sed -i "" "s/container_name: 请填写容器名/container_name: go118/" ../go118/docker-compose.yml && \
  sed -i "" "s/ hostname: 请填写hostname/ hostname: go118/" ../go118/docker-compose.yml && \
  cd ${go118Path} && \
  docker-compose build
}

function rebuild117(){
  cd ${go117Path}
  if [ -f "${composeYmlPath}" ]; then
    docker-compose down
  fi
  rm -rf .env docker-compose.yml
}

function rebuild118(){
  cd ${go118Path}
  if [ -f "${composeYmlPath}" ]; then
    docker-compose down
  fi
  rm -rf .env docker-compose.yml
}


function build(){
  rebuild117
  build117

#  rebuild118
#    build118
}

build