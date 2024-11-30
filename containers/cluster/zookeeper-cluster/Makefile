include .env
include ../../../conf/mk/common.mk

CONTAINERS=${ZOOKEEPER_CONTAINER_NAME_NODE1} ${ZOOKEEPER_CONTAINER_NAME_NODE2} ${ZOOKEEPER_CONTAINER_NAME_NODE3}

.PHONY: help test
help:
	@echo "usage: make <option>"
	@echo "options and effects:"
	@echo "    help                     : Show help"
	@echo "    test                     : Test ..."
	@echo "    build      				: build"
	@echo "    start                    : 启动所有服务"
	@echo "    start-zoonavigator       : 启动zoonavigator可视化"

test:
	@echo "test ..."

.PHONY: build start
build:
	@${DOCKER_COMPOSE_BUILD} ${CONTAINERS}

start:
	@${DOCKER_COMPOSE_UP} -d ${CONTAINERS}

start-zoonavigator:
	@${DOCKER_COMPOSE_UP} -d ${ZOONAVIGATOR_CONTAINER_NAME}