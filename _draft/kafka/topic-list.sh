#!/usr/bin/env bash

source ../common/body.sh

function TopicList() {
  echo -e "\033[32m 查看topic列表:\n \033[0m"
  docker exec -it ${KAFKA_CONTAINER_NAME} bash -c "${CMD_TOPIC_PREFIX} --list"
}

TopicList