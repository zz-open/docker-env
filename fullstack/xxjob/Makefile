include .env
include ../../../conf/mk/common.mk

CONTAINERS=${MYSQL_CONTAINER_NAME} ${XXJOB_CONTAINER_NAME} 

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

.PHONY: enter_admin enter_mysql
enter_admin:
	$(call FUNC_DC_EXEC,${XXJOB_CONTAINER_NAME},"/bin/bash")
enter_mysql:
	$(call FUNC_DC_EXEC,${MYSQL_CONTAINER_NAME},"/bin/bash")