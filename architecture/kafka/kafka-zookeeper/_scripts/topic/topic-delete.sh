#!/usr/bin/env bash

source ../common/body.sh

function TopicDelete() {
  # 删除kafka步骤很多，日后补充
  # 修改topic老化时间，log.retention.hours（仅对没有设置老化时间的topic生效），老化时间即消息的最长保留时间，消费者必须在此时间结束前消费消息，否则消息将被删除。删除的消息，无法被消费。
#  local topic=${1:?"请输入topic 名称"}
#
#  docker exec -it ${KAFKA_CONTAINER_NAME} bash -c "${CMD_TOPIC_PREFIX} --topic ${topic} --delete"
}

#TopicDelete $1
