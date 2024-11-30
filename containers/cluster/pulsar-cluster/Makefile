include .env
include ../../../conf/mk/common.mk

.PHONY: help test
help:
	@echo "usage: make <option>"
	@echo "options and effects:"
	@echo "    help                     : Show help"
	@echo "    test                     : Test ..."

test:
	@echo "test ..."

.PHONY: enter-bookie1 enter-broker1
enter-bookie1:
	@${DOCKER_COMPOSE_EXEC} ${PULSAR_BOOKIE_CONTAINER_NAME} bash

enter-broker1:
	@${DOCKER_COMPOSE_EXEC} ${PULSAR_BROKER_CONTAINER_NAME} bash