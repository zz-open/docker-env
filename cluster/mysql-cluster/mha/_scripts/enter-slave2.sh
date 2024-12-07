#!/usr/bin/env bash

source ./body.sh

function EnterContainer() {
    docker exec -it ${MYSQL_SLAVE2_CONTAINER_NAME} bash
}

EnterContainer