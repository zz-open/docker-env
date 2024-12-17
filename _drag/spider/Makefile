include .env
include ../../../conf/mk/common.mk

CONTAINERS=${MYSQL_CONTAINER_NAME} ${REDIS_STACK_CONTAINER_NAME}

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

.PHONY: reset
reset:
	$(call FUNC_DC_STOP,${CONTAINERS})
	rm -rf ${DATA_HOST_PATH}/mysql
	rm -rf ${DATA_HOST_PATH}/redis
	$(call FUNC_DC_DOWN,${CONTAINERS})
