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

.PHONY: reset
reset:
	@${DOCKER_COMPOSE_STOP}
	rm -rf ${DATA_HOST_PATH}/${ROCKETMQ_BROKER_CONTAINER_NAME_NODE1}
	@${DOCKER_COMPOSE_DOWN}

.PHONY: cluster_info start-local
cluster_info:
	@${DOCKER_COMPOSE_EXEC} ${ROCKETMQ_NAMESRV_CONTAINER_NAME_NODE1} bash -c 'sh bin/mqadmin clusterList -n 127.0.0.1:9876'

start-local:
	@${DOCKER_COMPOSE_UP} -d ${ROCKETMQ_NAMESRV_CONTAINER_NAME_NODE1} ${ROCKETMQ_CONTROLLER_CONTAINER_NAME_NODE1} ${ROCKETMQ_BROKER_CONTAINER_NAME_NODE1} ${ROCKETMQ_DASHBOARD_CONTAINER_NAME}
