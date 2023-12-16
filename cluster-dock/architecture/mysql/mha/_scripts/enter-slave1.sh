#!/usr/bin/env bash

source ./body.sh

function EnterContainer() {
   docker exec -it ${MYSQL_SLAVE1_CONTAINER_NAME} bash
}

EnterContainer