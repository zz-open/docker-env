include .env
include ../../_common/common.mk

CONTAINERS=

.PHONY: help test
help:
	@echo "usage: make <option>"
	@echo "options and effects:"
	@echo "    help                     : Show help"
	@echo "    test                     : Test ..."
	@echo "    build      				: build"
	@echo "    start                    : 启动所有服务"

test:
	@echo "test ..."

.PHONY: build start enter_admin enter_mysql
build:
	@${DOCKER_COMPOSE_BUILD} ${CONTAINERS}

start:
	@${DOCKER_COMPOSE_UP} -d ${CONTAINERS}

enter_admin:
	@${DOCKER_COMPOSE_EXEC} ${XXJOB_CONTAINER_NAME} /bin/bash

enter_mysql:
	@${DOCKER_COMPOSE_EXEC} ${MYSQL_CONTAINER_NAME} /bin/bash