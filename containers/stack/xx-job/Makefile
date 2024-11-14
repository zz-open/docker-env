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

.PHONY: build start enter_php_apache cat_php_apache_hosts grep_module enter_newenglish
build:
	@${DOCKER_COMPOSE_BUILD} ${CONTAINERS}

start:
	@${DOCKER_COMPOSE_UP} -d ${CONTAINERS}

enter_php_apache:
	@${DOCKER_COMPOSE_EXEC} ${PHP_APACHE_CONTAINER_NAME} bash

cat_php_apache_hosts:
	@${DOCKER_COMPOSE_EXEC} ${PHP_APACHE_CONTAINER_NAME} cat /etc/hosts

enter_newenglish:
	@${DOCKER_COMPOSE_EXEC} ${PHP_APACHE_CONTAINER_NAME} /bin/bash -c "cd /var/www/newenglish && pwd"

grep_module:
	@apachectl -M | grep rewrite 
	@apachectl -M | grep headers
