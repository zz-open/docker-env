#!/usr/bin/env bash

source ./body.sh

function EnterContainer() {
    docker exec -it ${MYSQL_MASTER1_CONTAINER_NAME} bash
}

EnterContainer