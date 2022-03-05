#!/usr/bin/env bash

masterIp=$(docker inspect -f '{{range .NetworkSettings.Networks}}{{.IPAddress}}{{end}}' mysql-m1)
passwd=$(sed '/MYSQL_PASSWORD/!d;s/.*=//' ../.env)
replicaName=$(sed '/REPLICATION_ACCOUNT_NAME/!d;s/.*=//' ../.env)
replicaPwd=$(sed '/REPLICATION_PASSWD/!d;s/.*=//' ../.env)

#不知道为什么，加了\G就得不到正确结果,也不能加-it,还会把整个目录名输出
CMD_SHOW_MASTER_STATUS="mysql -u root -p${passwd} -e 'SHOW MASTER STATUS'"

function StartSlave() {
    masterStatusInfo=`docker exec mysql-m1 bash -c "${CMD_SHOW_MASTER_STATUS}"`
    LOG_FILE=$(echo ${masterStatusInfo} | grep File | awk '{ print $6}')
    LOG_POS=$(echo ${masterStatusInfo} | grep Position | awk '{ print $7}')
    CMD_CHANGE_MASTER="mysql -uroot -p${passwd} \
                                -e \"STOP SLAVE; CHANGE MASTER TO MASTER_HOST='${masterIp}', \
                                MASTER_USER='${replicaName}', \
                                MASTER_PASSWORD='${replicaPwd}', \
                                MASTER_LOG_FILE='${LOG_FILE}', \
                                MASTER_LOG_POS=${LOG_POS}; START SLAVE; \""
#    echo ${CMD_CHANGE_MASTER}
    docker exec -it mysql-s1 bash -c "${CMD_CHANGE_MASTER}"
    docker exec -it mysql-s2 bash -c "${CMD_CHANGE_MASTER}"
#    CHANGE MASTER TO MASTER_HOST='172.19.0.20',MASTER_USER='replica',MASTER_PASSWORD='xl123456?',MASTER_LOG_FILE='mysql-bin.000008',MASTER_LOG_POS=154;
}