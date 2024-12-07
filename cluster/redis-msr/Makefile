include .env
include ../../../conf/mk/common.mk

REDIS_CONN=redis-cli -a ${REDIS_PASSWORD} -p ${REDIS_CONTAINER_PORT}

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
	@${DOCKER_COMPOSE_BUILD} .

start-redis-msr:
	@${DOCKER_COMPOSE_UP} -d ${REDIS_CONTAINER_NAME_NODE1} ${REDIS_CONTAINER_NAME_NODE2} ${REDIS_CONTAINER_NAME_NODE3} ${REDIS_CONTAINER_NAME_NODE4}

start-redis-sentinel:
	@${DOCKER_COMPOSE_UP} -d ${REDIS_CONTAINER_NAME_SENTINEL1} ${REDIS_CONTAINER_NAME_SENTINEL2} ${REDIS_CONTAINER_NAME_SENTINEL3}

build-redis-sentinel:
	@${DOCKER_COMPOSE_BUILD} ${REDIS_CONTAINER_NAME_SENTINEL1} ${REDIS_CONTAINER_NAME_SENTINEL2} ${REDIS_CONTAINER_NAME_SENTINEL3}

stop-redis-sentinel:
	@${DOCKER_COMPOSE_STOP} ${REDIS_CONTAINER_NAME_SENTINEL1} ${REDIS_CONTAINER_NAME_SENTINEL2} ${REDIS_CONTAINER_NAME_SENTINEL3}

conn-redis1:
	@${DOCKER_COMPOSE_EXEC} ${REDIS_CONTAINER_NAME_NODE1} ${REDIS_CONN} -h ${REDIS_BACKEND_IP_NODE1}

conn-redis2:
	@${DOCKER_COMPOSE_EXEC} ${REDIS_CONTAINER_NAME_NODE2} ${REDIS_CONN} -h ${REDIS_BACKEND_IP_NODE2}

conn-redis3:
	@${DOCKER_COMPOSE_EXEC} ${REDIS_CONTAINER_NAME_NODE3} ${REDIS_CONN} -h ${REDIS_BACKEND_IP_NODE3}

conn-redis4:
	@${DOCKER_COMPOSE_EXEC} ${REDIS_CONTAINER_NAME_NODE4} ${REDIS_CONN} -h ${REDIS_BACKEND_IP_NODE4}

enter-redis1:
	@${DOCKER_COMPOSE_EXEC} ${REDIS_CONTAINER_NAME_NODE1} bash

enter-redis2:
	@${DOCKER_COMPOSE_EXEC} ${REDIS_CONTAINER_NAME_NODE2} bash

enter-redis3:
	@${DOCKER_COMPOSE_EXEC} ${REDIS_CONTAINER_NAME_NODE3} bash

enter-redis4:
	@${DOCKER_COMPOSE_EXEC} ${REDIS_CONTAINER_NAME_NODE4} bash