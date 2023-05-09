#!/usr/bin/env bash

composeYmlPath="./docker-compose.yml"
buildPath="/Users/xulei/jungle/docker-php56/container-env/lanp-php-fpm/build/build80"
php80Path="/Users/xulei/jungle/docker-php56/container-env/lanp-80/php-fpm"

#mac环境下 sed -i 后边必须加""表示备份文件的扩展名，不备份就填空

function containerBuild() {
  cd ${buildPath} && \
  cp -rp ./php-fpm ${php80Path} && \
  cp -rp ./env.example ${php80Path}/.env && \
  cp -rp ./scripts/start.sh ${php80Path}/start.sh && \
  cp -rp ./scripts/util.sh ${php80Path}/util.sh && \
  cp -rp ./docker-compose.yml.example ${php80Path}/docker-compose.yml && \
  #sed -i "s/PHP_VERSION=请填写版本/PHP_VERSION=8.0/" ${php80Path}/.env && \
  sed -i "" "s/php-fpm:/php-fpm-80:/" ${php80Path}/docker-compose.yml && \
  sed -i "" "s/container_name: php-fpm/container_name: php-fpm-80/" ${php80Path}/docker-compose.yml && \
  sed -i "" "s/hostname: php-fpm/hostname: php-fpm-80/" ${php80Path}/docker-compose.yml && \
  cd ${php80Path} && \
  docker-compose build
}

function containerDown(){
  cd ${php80Path}
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