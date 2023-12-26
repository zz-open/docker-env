include .env
include ../_common/common.mk

CONTAINERS=${REDIS_CONTAINER_NAME_NODE1} ${REDIS_CONTAINER_NAME_NODE2} ${REDIS_CONTAINER_NAME_NODE3} ${REDIS_CONTAINER_NAME_NODE4} ${REDIS_CONTAINER_NAME_NODE5} ${REDIS_CONTAINER_NAME_NODE6}

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

.PHONY: build start
build:
	@${DOCKER_COMPOSE_BUILD} ${CONTAINERS}

start:
	@${DOCKER_COMPOSE_UP} -d ${CONTAINERS}