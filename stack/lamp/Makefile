include .env
include ../../_common/common.mk

CONTAINERS=${PHP_FPM_CONTAINER_NAME} ${APACHE_CONTAINER_NAME}

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

enter_php_fpm:
	@${DOCKER_COMPOSE_EXEC} ${PHP_FPM_CONTAINER_NAME} bash

enter_apache:
	@${DOCKER_COMPOSE_EXEC} ${APACHE_CONTAINER_NAME} bash

cat_apache_hosts:
	@${DOCKER_COMPOSE_EXEC} ${APACHE_CONTAINER_NAME} cat /etc/hosts

cat_php_fpm_hosts:
	@${DOCKER_COMPOSE_EXEC} ${APACHE_CONTAINER_NAME} cat /etc/host