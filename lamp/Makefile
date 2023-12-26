include .env
include ../_common/common.mk

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

enter-php-fpm:
	@${DOCKER_COMPOSE_EXEC} ${PHP_FPM_CONTAINER_NAME} bash

enter-apache:
	@${DOCKER_COMPOSE_EXEC} ${APACHE_CONTAINER_NAME} bash

cat-apache-hosts:
	@${DOCKER_COMPOSE_EXEC} ${APACHE_CONTAINER_NAME} cat /etc/hosts

cat-php-fpm-hosts:
	@${DOCKER_COMPOSE_EXEC} ${APACHE_CONTAINER_NAME} cat /etc/host