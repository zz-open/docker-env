include .env
include ../_common/common.mk

.PHONY: help test
help:
	@echo "usage: make <option>"
	@echo "options and effects:"
	@echo "    help                     : Show help"
	@echo "    test                     : Test ..."

test:
	@echo "test ..."

.PHONY: reset
reset:
	@${DOCKER_COMPOSE_STOP}
	rm -rf ${DATA_PATH_HOST}/${ROCKETMQ_BROKER_CONTAINER_NAME}
	@${DOCKER_COMPOSE_DOWN}