#!/usr/bin/env bash

#此脚本用来构建php-fpm不同版本，通过network external链接apache2,即使不在一个compose文件也可以互相通信


composeYmlPath="./compose.yml"
buildPath="/Users/xulei/jungle/docker-php56/container-env/lanp/php-fpm/build"
php56Path="/Users/xulei/jungle/docker-php56/container-env/lanp/php-fpm/php56"
php74Path="/Users/xulei/jungle/docker-php56/container-env/lanp/php-fpm/php74"
php80Path="/Users/xulei/jungle/docker-php56/container-env/lanp/php-fpm/php80"

#mac环境下 sed -i 后边必须加""表示备份文件的扩展名，不备份就填空

function build56() {
  cd ${buildPath} && \
  cp -rp ./php-fpm ../php56/ && \
  cp -rp ./.env ../php56/ && \
  cp -rp ./docker-compose.yml.example ../php56/docker-compose.yml && \
  sed -i "" "s/PHP_VERSION=请填写版本/PHP_VERSION=5.6/" ../php56/.env && \
  sed -i "" "s/container_name: php-fpm/container_name: php-fpm56/" ../php56/docker-compose.yml && \
  cd ${php56Path} && \
  docker-compose build
}

function build74() {
  cd ${buildPath} && \
  cp -rp ./php-fpm ../php74/ && \
  cp -rp ./.env ../php74/ && \
  cp -rp ./docker-compose.yml.example ../php74/docker-compose.yml && \
  sed -i "" "s/PHP_VERSION=请填写版本/PHP_VERSION=7.4/" ../php74/.env && \
  sed -i "" "s/container_name: php-fpm/container_name: php-fpm74/" ../php74/docker-compose.yml && \
  cd ${php74Path} && \
  docker-compose build
}

function build80() {
  cd ${buildPath} && \
  cp -rp ./php-fpm ../php80/ && \
  cp -rp ./.env ../php80/ && \
  cp -rp ./docker-compose.yml.example ../php80/docker-compose.yml && \
  sed -i "s/PHP_VERSION=请填写版本/PHP_VERSION=8.0/" ../php80/.env && \
  sed -i "" "s/container_name: php-fpm/container_name: php-fpm80/" ../php80/docker-compose.yml && \
  cd ${php80Path} && \
  docker-compose build
}

function rebuild56(){
  cd ${php56Path}
  if [ -f "${composeYmlPath}" ]; then
    docker-compose down
  fi
  rm -rf .env docker-compose.yml php-fpm
}

function rebuild74(){
  cd ${php74Path}
  if [ -f "${composeYmlPath}" ]; then
    docker-compose down
  fi
  rm -rf .env docker-compose.yml php-fpm
}

function rebuild80(){
  cd ${php80Path}
  if [ -f "${composeYmlPath}" ]; then
    docker-compose down
  fi
  rm -rf .env docker-compose.yml php-fpm
}

function build(){
  rebuild74
  build74
}

build