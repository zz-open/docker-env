#!/usr/bin/env bash

source $(dirname $0)/common.sh

prepare() {
  mkdir -p ${DATA_PATH_HOST} && \
  chmod 777 -R ${DATA_PATH_HOST}

  echo -e "创建数据目录成功 \n"
}


mysql(){
  mkdir -p ${DATA_PATH_HOST}/mysql && \
  mkdir -p ${DATA_PATH_HOST}/mysql57 && \
  chmod 777 -R ${DATA_PATH_HOST}/mysql && \
  chmod 777 -R ${DATA_PATH_HOST}/mysql57

  echo -e "创建 mysql, mysql57 数据目录成功 \n"
}

prepare
mysql