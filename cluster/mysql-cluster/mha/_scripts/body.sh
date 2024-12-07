#!/usr/bin/env bash

ENV_PATH=../.env
MYSQL_USER=root
MYSQL_PASSWORD=$(sed '/MYSQL_PASSWORD/!d;s/.*=//' ${ENV_PATH})
REPL_USER=$(sed '/REPLICATION_USER/!d;s/.*=//' ${ENV_PATH})
REPL_PASSWORD=$(sed '/REPLICATION_PASSWORD/!d;s/.*=//' ${ENV_PATH})
MYSQL_MASTER1_CONTAINER_NAME=$(sed '/MYSQL_MASTER_1_CONTAINER_NAME/!d;s/.*=//' ${ENV_PATH})
MySQL_MASTER1_IP=$(docker inspect -f '{{range .NetworkSettings.Networks}}{{.IPAddress}}{{end}}' ${MYSQL_MASTER1_CONTAINER_NAME})
MYSQL_SLAVE1_CONTAINER_NAME=$(sed '/MYSQL_SLAVE_1_CONTAINER_NAME/!d;s/.*=//' ${ENV_PATH})
MySQL_SLAVE1_IP=$(docker inspect -f '{{range .NetworkSettings.Networks}}{{.IPAddress}}{{end}}' ${MYSQL_SLAVE1_CONTAINER_NAME})
MYSQL_SLAVE2_CONTAINER_NAME=$(sed '/MYSQL_SLAVE_2_CONTAINER_NAME/!d;s/.*=//' ${ENV_PATH})
MySQL_SLAVE2_IP=$(docker inspect -f '{{range .NetworkSettings.Networks}}{{.IPAddress}}{{end}}' ${MYSQL_SLAVE2_CONTAINER_NAME})

CMD_STOP_SLAVE="mysql -u${MYSQL_USER} -p${MYSQL_PASSWORD} -e \"STOP SLAVE;\""
CMD_START_SLAVE="mysql -u${MYSQL_USER} -p${MYSQL_PASSWORD} -e \"START SLAVE;\""
CMD_RESET_SLAVE="mysql -u${MYSQL_USER} -p${MYSQL_PASSWORD} -e \"RESET SLAVE;\""
CMD_SHOW_MASTER_STATUS="mysql -u${MYSQL_USER} -p${MYSQL_PASSWORD} -e \"SHOW MASTER STATUS\G\""
CMD_SHOW_SLAVE_STATUS="mysql -u${MYSQL_USER} -p${MYSQL_PASSWORD} -e \"SHOW SLAVE STATUS\G\""

# gtid 方式
CMD_GTID_CHANGE_MASTER="mysql -u${MYSQL_USER} -p${MYSQL_PASSWORD} 2>/dev/null \
                   -e \"STOP SLAVE; CHANGE MASTER TO MASTER_HOST='${MySQL_MASTER1_IP}',
                   MASTER_PORT=3306, MASTER_USER='${REPL_USER}',
                   MASTER_PASSWORD='${REPL_PASSWORD}',
                   MASTER_AUTO_POSITION=1;START SLAVE;\""

MASTER_STATUS_INFO=`docker exec ${MYSQL_MASTER1_CONTAINER_NAME} bash -c "${CMD_SHOW_MASTER_STATUS}"`

LOG_FILE=$(echo ${MASTER_STATUS_INFO} | grep File | awk '{ print $6}')
LOG_POS=$(echo ${MASTER_STATUS_INFO} | grep Position | awk '{ print $7}')

# 传统方式
#CMD_TRADITION_CHANGE_MASTER="mysql -u${MYSQL_USER} -p${MYSQL_PASSWORD} 2>/dev/null \
#                                -e \"STOP SLAVE; CHANGE MASTER TO MASTER_HOST='${MySQL_MASTER1_IP}', \
#                                MASTER_USER='${REPL_USER}', \
#                                MASTER_PASSWORD='${REPL_PASSWORD}', \
#                                MASTER_LOG_FILE='${LOG_FILE}', \
#                                MASTER_LOG_POS=${LOG_POS}; START SLAVE; \""
# CHANGE MASTER TO MASTER_HOST='172.19.0.20',MASTER_USER='replica',MASTER_PASSWORD='xl123456?',MASTER_LOG_FILE='mysql-bin.000008',MASTER_LOG_POS=154;