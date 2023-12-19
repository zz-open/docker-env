#!/usr/bin/env bash

source ../common/body.sh

function TopicDescribe() {
  local topic=${1:?"请输入topic 名称"}

  docker exec -it ${KAFKA_CONTAINER_NAME} bash -c "${CMD_TOPIC_PREFIX} --topic ${topic} --describe"
}

TopicDescribe $1
