include .env
include ../../../conf/mk/common.mk

ES_CONTAINERS=${ES_CONTAINER_NAME_NODE1} ${ES_CONTAINER_NAME_NODE2} ${ES_CONTAINER_NAME_NODE3} ${ES_CONTAINER_NAME_SETUP} 
CONTAINERS=${KIBANA_CONTAINER_NAME}
HOST_CA_CRT_PATH=${ES_PATH}/certs/ca/ca.crt
CONTAINER_CA_CRT_PATH=/usr/share/elasticsearch/config/certs/ca/ca.crt


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

.PHONY: build start create_data_dir reset
build:
	@${DOCKER_COMPOSE_BUILD} ${CONTAINERS}

start:
	@${DOCKER_COMPOSE_UP} -d ${ES_CONTAINERS}

create_data_dir:
	mkdir -p ${DATA_HOST_PATH}/${ES_CONTAINER_NAME_NODE1}/*
	mkdir -p ${DATA_HOST_PATH}/${ES_CONTAINER_NAME_NODE2}/*
	mkdir -p ${DATA_HOST_PATH}/${ES_CONTAINER_NAME_NODE3}/*
	mkdir -p ${DATA_HOST_PATH}/${KIBANA_CONTAINER_NAME}/*

	chmod -R 777 ${DATA_HOST_PATH}/${ES_CONTAINER_NAME_NODE1}
	chmod -R 777 ${DATA_HOST_PATH}/${ES_CONTAINER_NAME_NODE2}
	chmod -R 777 ${DATA_HOST_PATH}/${ES_CONTAINER_NAME_NODE3}
	chmod -R 777 ${DATA_HOST_PATH}/${KIBANA_CONTAINER_NAME}

reset:
	@${DOCKER_COMPOSE_STOP}
	rm -rf ${DATA_HOST_PATH}/${ES_CONTAINER_NAME_NODE1}/*
	rm -rf ${DATA_HOST_PATH}/${ES_CONTAINER_NAME_NODE2}/*
	rm -rf ${DATA_HOST_PATH}/${ES_CONTAINER_NAME_NODE3}/*
	rm -rf ${DATA_HOST_PATH}/${KIBANA_CONTAINER_NAME}/*
	rm -rf ${ES_PATH}/certs/*
	@${DOCKER_COMPOSE_DOWN}

# Elasticsearch ############################################
.PHONY: es1_en es1_runing
es1_en:
	${DOCKER_COMPOSE_EXEC} ${ES_CONTAINER_NAME_NODE1} bash
es1_runing:
	@${DOCKER_COMPOSE_EXEC} ${ES_CONTAINER_NAME_NODE1} curl --cacert ${CONTAINER_CA_CRT_PATH} -u elastic:${ELASTIC_PASSWORD} https://localhost:9200
