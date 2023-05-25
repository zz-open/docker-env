#!/usr/bin/env bash

source ./body.sh

function ResetSlave() {
  docker exec -it ${MYSQL_SLAVE1_CONTAINER_NAME} bash -c "${CMD_RESET_SLAVE}";

  docker exec -it ${MYSQL_SLAVE2_CONTAINER_NAME} bash -c "${CMD_RESET_SLAVE}";
}

ResetSlave