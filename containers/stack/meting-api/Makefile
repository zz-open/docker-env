include .env
include ../../_common/common.mk

CONTAINERS=${PHP_APACHE_CONTAINER_NAME}

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

.PHONY: build start enter_meting enter_caddy cat_caddy_hosts
build:
	@${DOCKER_COMPOSE_BUILD} ${CONTAINERS}

start:
	@${DOCKER_COMPOSE_UP} -d ${CONTAINERS}

enter_meting-api:
	@${DOCKER_COMPOSE_EXEC} ${METING_API_CONTAINER_NAME} bash

enter_caddy:
	@${DOCKER_COMPOSE_EXEC} ${CADDY_CONTAINER_NAME} /bin/sh

cat_caddy_hosts:
	@${DOCKER_COMPOSE_EXEC} ${CADDY_CONTAINER_NAME} cat /etc/hosts
