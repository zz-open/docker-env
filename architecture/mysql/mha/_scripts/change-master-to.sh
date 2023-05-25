#!/usr/bin/env bash

source ./body.sh

function ChangeMasterTo() {
  docker exec -it ${MYSQL_SLAVE1_CONTAINER_NAME} bash -c "${CMD_GTID_CHANGE_MASTER}"

  docker exec -it ${MYSQL_SLAVE2_CONTAINER_NAME} bash -c "${CMD_GTID_CHANGE_MASTER}"
}

ChangeMasterTo