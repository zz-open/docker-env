#!/usr/bin/env bash

composeYmlPath="./docker-compose.yml"
buildPath="/Users/xulei/jungle/docker-php56/container-env/lanp-php-fpm/build/build74"
php74Path="/Users/xulei/jungle/docker-php56/container-env/lanp-74/php-fpm"

#mac环境下 sed -i 后边必须加""表示备份文件的扩展名，不备份就填空

function containerBuild() {
  cd ${buildPath} && \
  cp -rp ./php-fpm ${php74Path} && \
  cp -rp ./env.example ${php74Path}/.env && \
  cp -rp ./scripts/start.sh ${php74Path}/start.sh && \
  cp -rp ./scripts/util.sh ${php74Path}/util.sh && \
  cp -rp ./docker-compose.yml.example ${php74Path}/docker-compose.yml && \
  sed -i "" "s/PHP_FPM_INSTALL_YAF=false/PHP_FPM_INSTALL_YAF=true/" ${php74Path}/.env && \
  sed -i "" "s/php-fpm:/php-fpm-74:/" ${php74Path}/docker-compose.yml && \
  sed -i "" "s/container_name: php-fpm/container_name: php-fpm-74/" ${php74Path}/docker-compose.yml && \
  sed -i "" "s/hostname: php-fpm/hostname: php-fpm-74/" ${php74Path}/docker-compose.yml && \
  cd ${php74Path} && \
  docker-compose build
}

function containerDown(){
  cd ${php74Path}
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