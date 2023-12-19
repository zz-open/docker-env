#!/usr/bin/env bash

ENV_PATH=../.env
KAFKA_BIN_PATH=/opt/bitnami/kafka/bin
KAFKA_INTERNAL_BOOTSTRAP_SERVER=$(sed '/KAFKA_INTERNAL_BOOTSTRAP_SERVER/!d;s/.*=//' ${ENV_PATH})
KAFKA_CONTAINER_NAME=$(sed '/KAFKA_CONTAINER_NAME/!d;s/.*=//' ${ENV_PATH})
KAFKA_IP=$(docker inspect -f '{{range .NetworkSettings.Networks}}{{.IPAddress}}{{end}}' ${KAFKA_CONTAINER_NAME})

# 脚本名字
TOPIC_BIN_SHELL_NAME=kafka-topics.sh

# 支持的命令前缀
CMD_TOPIC_PREFIX="${KAFKA_BIN_PATH}/${TOPIC_BIN_SHELL_NAME} --bootstrap-server ${KAFKA_INTERNAL_BOOTSTRAP_SERVER}"

# gtid 方式
#CMD_GTID_CHANGE_MASTER="mysql -u${MYSQL_USER} -p${MYSQL_PASSWORD} 2>/dev/null \
#                   -e \"STOP SLAVE; CHANGE MASTER TO MASTER_HOST='${MySQL_MASTER1_IP}',
#                   MASTER_PORT=3306, MASTER_USER='${REPL_USER}',
#                   MASTER_PASSWORD='${REPL_PASSWORD}',
#                   MASTER_AUTO_POSITION=1;START SLAVE;\""
#
#MASTER_STATUS_INFO=`docker exec ${MYSQL_MASTER1_CONTAINER_NAME} bash -c "${CMD_SHOW_MASTER_STATUS}"`
#
#LOG_FILE=$(echo ${MASTER_STATUS_INFO} | grep File | awk '{ print $6}')
#LOG_POS=$(echo ${MASTER_STATUS_INFO} | grep Position | awk '{ print $7}')