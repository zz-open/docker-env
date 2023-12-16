#!/usr/bin/env bash

APACHE2_CONTAINER_NAME=lanmp-1-apache2
PHP_FPM_CONTAINER_NAME=lanmp-1-php-fpm
HOSTS_PATH=/etc/hosts
APACHE2_CONTAINER_IP=$(docker-compose exec ${APACHE2_CONTAINER_NAME} bash -c "cat /etc/hosts" | grep ${APACHE2_CONTAINER_NAME} | awk '{print$1}')
LOCAL_HOSTS_PATH=../_build/hosts

function AppendHostToPhpFpmContainer() {
  # 设置分隔符
  OldIFS=$IFS
  IFS=`echo -e "\n"`
  # 最好是先删除hosts文件的最后一个空行，然后开始添加
  HOSTS=$(cat ${LOCAL_HOSTS_PATH})
  # hosts文件添加表示
  docker-compose exec ${PHP_FPM_CONTAINER_NAME} bash -c "echo -e '\n# Added by add-hosts.sh' >> ${HOSTS_PATH}"
  for host in ${HOSTS} ; do
    local host_tmp=$(echo ${host//127.0.0.1/${APACHE2_CONTAINER_IP}})
    docker-compose exec ${PHP_FPM_CONTAINER_NAME} bash -c "echo -e '${host_tmp}' >> ${HOSTS_PATH}"
  done
  docker-compose exec ${PHP_FPM_CONTAINER_NAME} bash -c "echo -e '\n# add-hosts.sh End of section' >> ${HOSTS_PATH}"
  IFS=$OldIFS

  # 再次查看hosts
  docker-compose exec ${PHP_FPM_CONTAINER_NAME} bash -c "cat /etc/hosts"
  echo -e "\033[32m hosts添加完成 \033[0m"
}

AppendHostToPhpFpmContainer