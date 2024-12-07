#!/usr/bin/env bash

source ../common/body.sh

function TopicCreate() {
  local topic=${1:?"请输入topic 名称"}
  local partitions=${2:-1}        #分区数
  local replicationFactor=${3:-1} #副本数

  local msg=$(docker exec -it ${KAFKA_CONTAINER_NAME} bash -c "${CMD_TOPIC_PREFIX} --topic ${topic} --create --partitions ${partitions} --replication-factor ${replicationFactor}")
  if [ $? -ne 0 ];then
    echo -e "\033[31m topic: ${topic} 创建失败，${msg}\n \033[0m"
  else
    echo -e "\033[32m topic: ${topic} 创建成功\n \033[0m"
  fi
}

TopicCreate $1 $2 $3
