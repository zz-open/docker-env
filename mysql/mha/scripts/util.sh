#!/usr/bin/env bash

passwd=$(sed '/MYSQL_PASSWORD/!d;s/.*=//' ../.env)
replicaName=$(sed '/REPLICATION_ACCOUNT_NAME/!d;s/.*=//' ../.env)
replicaPwd=$(sed '/REPLICATION_PASSWD/!d;s/.*=//' ../.env)

CMD_STOP_SLAVE="mysql -uroot -p${passwd} -e \"STOP SLAVE;\""
CMD_REST_SLAVE="mysql -uroot -p${passwd} -e \"RESET SLAVE;\""
CMD_ADD_REPLICA_ACCOUNT="mysql -uroot -p${passwd} \
                -e \"CREATE USER '${replicaName}'@'%' IDENTIFIED BY '${replicaPwd}';\" \
                -e \"GRANT REPLICATION SLAVE ON *.* TO '${replicaName}'@'%';\" \
                -e \"FLUSH PRIVILEGES;\""
CMD_SHOW_SLAVE_STATUS="mysql -uroot -p${passwd} -e \"SHOW SLAVE STATUS\G\""

function StopSlave() {
  #停止集群复制

  docker exec -it mysql-s1 bash -c "${CMD_STOP_SLAVE}";
  docker exec -it mysql-s2 bash -c "${CMD_STOP_SLAVE}";
}


function ResetSlave() {
  # 此方法用于重启主从集群后，从节点无法同步主节点数据的问题
  docker exec -it mysql-s1 bash -c "${CMD_REST_SLAVE}";
  docker exec -it mysql-s2 bash -c "${CMD_REST_SLAVE}";
}

function AddReplicationAccount() {
  #为主节点添加主从复制用户

  #-uroot,-p密码 必须挨着
  docker exec -it mysql-m1 bash -c "${CMD_ADD_REPLICA_ACCOUNT}"

  #  CREATE USER 'replica'@'%' IDENTIFIED BY 'xl123456?';#创建用户
  #  GRANT REPLICATION SLAVE ON *.* TO 'replica'@'%';#分配权限
  #  FLUSH PRIVILEGES;
}

function ShowSlaveStatus() {
  # 此脚本用于重启主从集群后，从节点无法同步主节点数据的问题
  docker exec -it mysql-s1 bash -c "${CMD_SHOW_SLAVE_STATUS}"
  docker exec -it mysql-s2 bash -c "${CMD_SHOW_SLAVE_STATUS}"
}