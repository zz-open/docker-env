#!/usr/bin/env bash

source ./body.sh

function ShowSlaveStatus() {
  docker exec -it ${MYSQL_SLAVE1_CONTAINER_NAME} bash -c "${CMD_SHOW_SLAVE_STATUS}"

  docker exec -it ${MYSQL_SLAVE2_CONTAINER_NAME} bash -c "${CMD_SHOW_SLAVE_STATUS}"
}

ShowSlaveStatus