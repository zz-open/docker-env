#!/usr/bin/env bash

function StartSlave() {
  #从库使用主库的备份账号连接主库，并开始备份
  masterIp=$(docker inspect -f '{{range .NetworkSettings.Networks}}{{.IPAddress}}{{end}}' mysql-m1)
  passwd=$(sed '/MYSQL_PASSWORD/!d;s/.*=//' ../.env)
  replicaName=$(sed '/REPLICATION_ACCOUNT_NAME/!d;s/.*=//' ../.env)
  replicaPwd=$(sed '/REPLICATION_PASSWD/!d;s/.*=//' ../.env)

  CMD_CHANGE_MASTER="mysql -uroot -p${passwd} 2>/dev/null \
                     -e \"STOP SLAVE; CHANGE MASTER TO MASTER_HOST='${masterip}',
                     MASTER_PORT=3306, MASTER_USER='${replicaName}',
                     MASTER_PASSWORD='${replicaPwd}',
                     MASTER_AUTO_POSITION=1;START SLAVE;\""


  docker exec -it mysql-s1 bash -c "${CMD_CHANGE_MASTER}"
  docker exec -it mysql-s2 bash -c "${CMD_CHANGE_MASTER}"
}