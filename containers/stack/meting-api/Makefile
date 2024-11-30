include .env
include ../../../conf/mk/common.mk

CONTAINERS=${PHP_APACHE_CONTAINER_NAME}

.PHONY: help test build start
help:
	@echo "usage: make <option>"
	@echo "options and effects:"
	@echo "    help                     : Show help"
	@echo "    test                     : Test ..."
	@echo "    build      				: 构建所有服务"
	@echo "    start                    : 启动所有服务"

test:
	@echo "test ..."
build:
	$(call FUNC_DC_BUILD,${CONTAINERS})
start:
	$(call FUNC_DC_UP,${CONTAINERS})

.PHONY: enter_meting enter_caddy cat_caddy_hosts
enter_meting-api:
	$(call FUNC_DC_EXEC,${METING_API_CONTAINER_NAME},"bash")
enter_caddy:
	$(call FUNC_DC_EXEC,${CADDY_CONTAINER_NAME},"/bin/sh")
cat_caddy_hosts:
	$(call FUNC_DC_EXEC,${CADDY_CONTAINER_NAME},"cat /etc/hosts")
