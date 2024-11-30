include .env
include ../../../conf/mk/common.mk

CONTAINERS=${NATS_CONTAINER_NAME_NODE1} ${NATS_CONTAINER_NAME_NODE2} ${NATS_CONTAINER_NAME_NODE3} ${NATS_BOX_CONTAINER_NAME}

.PHONY: help test
help:
	@echo "usage: make <option>"
	@echo "options and effects:"
	@echo "    help                     : Show help"
	@echo "    test                     : Test ..."
	@echo "    build                    : build"
	@echo "    start                    : 启动所有服务"

test:
	@echo "test ..."

.PHONY: build start
build:
	@${DOCKER_COMPOSE_BUILD} ${CONTAINERS}

start:
	@${DOCKER_COMPOSE_UP} -d ${CONTAINERS}

enter-nats-box:
	@${DOCKER_COMPOSE_EXEC} ${NATS_BOX_CONTAINER_NAME} /bin/sh