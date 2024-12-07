include .env
include .env.local
include ../../../conf/mk/common.mk

CONTAINERS=${PHP_APACHE_CONTAINER_NAME}

.PHONY: help test build start
help:
	@echo "usage: make <option>"
	@echo "options and effects:"
	@echo "    help                     : Show help"
	@echo "    test                     : Test ..."
	@echo "    build      				: build"
	@echo "    start                    : 启动所有服务"

test:
	@echo "test ..."
	export COMPOSE_ENV_FILES=.env,.env.local
build:
	$(call FUNC_DC_BUILD,${CONTAINERS})
start:
	$(call FUNC_DC_UP,${CONTAINERS})

.PHONY: enter_php_apache cat_php_apache_hosts enter_newenglish grep_module
enter_php_apache:
	$(call FUNC_DC_EXEC,${PHP_APACHE_CONTAINER_NAME},bash)

cat_php_apache_hosts:
	$(call FUNC_DC_EXEC,${PHP_APACHE_CONTAINER_NAME},/bin/bash -c, "cat /etc/hosts")

enter_newenglish:
	$(call FUNC_DC_EXEC,${PHP_APACHE_CONTAINER_NAME},/bin/bash -c, "cd /var/www/newenglish && pwd")

grep_module:
	$(call FUNC_DC_EXEC,${PHP_APACHE_CONTAINER_NAME},/bin/bash -c, "apachectl -M")
	$(call FUNC_DC_EXEC,${PHP_APACHE_CONTAINER_NAME},/bin/bash -c, "apachectl -M | grep rewrite ")
	$(call FUNC_DC_EXEC,${PHP_APACHE_CONTAINER_NAME},/bin/bash -c, "apachectl -M | grep headers")