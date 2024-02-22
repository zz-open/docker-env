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

.PHONY: enter-pulsar
enter-pulsar:
	@${DOCKER_COMPOSE_EXEC} ${PULSAR_CONTAINER_NAME} bash