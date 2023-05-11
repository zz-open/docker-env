#!/usr/bin/env bash

composeYmlPath="./docker-compose.yml"
buildPath="/Users/xulei/jungle/docker-php56/container-env/lanp-php-fpm/build/build56"
php56Path="/Users/xulei/jungle/docker-php56/container-env/lanp-56/php-fpm"

#mac环境下 sed -i 后边必须加""表示备份文件的扩展名，不备份就填空

function containerBuild() {
  cd ${buildPath} && \
  cp -rp ./php-fpm ${php56Path} && \
  cp -rp ./env.example ${php56Path}/.env && \
  cp -rp ./scripts/start.sh ${php56Path}/start.sh && \
  cp -rp ./scripts/util.sh ${php56Path}/util.sh && \
  cp -rp ./docker-compose.yml.example ${php56Path}/docker-compose.yml && \
  sed -i "" "s/php-fpm:/php-fpm-56:/" ${php56Path}/docker-compose.yml && \
  sed -i "" "s/container_name: php-fpm/container_name: php-fpm-56/" ${php56Path}/docker-compose.yml && \
  sed -i "" "s/hostname: php-fpm/hostname: php-fpm-56/" ${php56Path}/docker-compose.yml && \
  cd ${php56Path} && \
  docker-compose build
}

function containerDown(){
  cd ${php56Path}
  if [ -f "${composeYmlPath}" ]; then
    docker-compose down && \
    sleep 2
  fi

  rm -rf ./*
  rm -rf .env
}

function build(){
  containerDown
  containerBuild
}

build