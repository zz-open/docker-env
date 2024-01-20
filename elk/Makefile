include .env
include ../_common/common.mk

CONTAINERS=${ES_CONTAINER_NAME} ${KIBANA_CONTAINER_NAME}
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

.PHONY: build start create-data-dir reset
build:
	@${DOCKER_COMPOSE_BUILD} ${CONTAINERS}

start:
	@${DOCKER_COMPOSE_UP} -d ${CONTAINERS}

create-data-dir:
	mkdir -p ${DATA_PATH_HOST}/${ES_CONTAINER_NAME}/*
	mkdir -p ${DATA_PATH_HOST}/${KIBANA_CONTAINER_NAME}/*

	chmod -R 777 ${DATA_PATH_HOST}/${ES_CONTAINER_NAME}
	chmod -R 777 ${DATA_PATH_HOST}/${KIBANA_CONTAINER_NAME}
	
reset:
	@${DOCKER_COMPOSE_STOP}
	rm -rf ${DATA_PATH_HOST}/${ES_CONTAINER_NAME}/*
	rm -rf ${DATA_PATH_HOST}/${KIBANA_CONTAINER_NAME}/*
	rm -rf ${ES_PATH}/certs/*
	@${DOCKER_COMPOSE_DOWN}

# Elasticsearch ############################################
.PHONY: es-en es-runing es-reset-password kibana-enrollment-token es-copy-ca es-service-token logstash-en
es-en:
	${DOCKER_COMPOSE_EXEC} ${ES_CONTAINER_NAME} bash
es-runing:
	@${DOCKER_COMPOSE_EXEC} ${ES_CONTAINER_NAME} curl --cacert ${CONTAINER_CA_CRT_PATH} -u elastic:${ELASTIC_PASSWORD} https://localhost:9200
es-reset-password:
	@${DOCKER_COMPOSE_EXEC} ${ES_CONTAINER_NAME} /usr/share/elasticsearch/bin/elasticsearch-reset-password -u ${ELASTIC_USERNAME}
kibana-enrollment-token:
	@${DOCKER_COMPOSE_EXEC} -u root ${ES_CONTAINER_NAME} /usr/share/elasticsearch/bin/elasticsearch-create-enrollment-token -s kibana
es-copy-ca:
	@${DOCKER} cp ${ES_CONTAINER_NAME}:/usr/share/elasticsearch/config/certs/http_ca.crt ${ES_PATH}
es-service-token:
	@${DOCKER_COMPOSE_EXEC} ${ES_CONTAINER_NAME} /usr/share/elasticsearch/bin/elasticsearch-service-tokens create elastic/kibana my-token
logstash-en:
	${DOCKER_COMPOSE_EXEC} ${LOGSTASH_CONTAINER_NAME} bash
elk-box-en:
	${DOCKER_COMPOSE_EXEC} ${ELK_BOX_CONTAINER_NAME} sh
# Kibana ###################################################
.PHONY:  kibana-en kibana-verification-code
kibana-en:
	${DOCKER_COMPOSE_EXEC} ${KIBANA_CONTAINER_NAME} bash
kibana-verification-code:
	${DOCKER_COMPOSE_EXEC} ${KIBANA_CONTAINER_NAME} /bin/kibana-verification-code