include .env
include ../../../conf/mk/common.mk

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

.PHONY: build start create_data_dir reset
build:
	@${DOCKER_COMPOSE_BUILD} ${CONTAINERS}

start:
	@${DOCKER_COMPOSE_UP} -d ${CONTAINERS}

create_data_dir:
	mkdir -p ${DATA_HOST_PATH}/${ES_CONTAINER_NAME}/*
	mkdir -p ${DATA_HOST_PATH}/${KIBANA_CONTAINER_NAME}/*

	chmod -R 777 ${DATA_HOST_PATH}/${ES_CONTAINER_NAME}
	chmod -R 777 ${DATA_HOST_PATH}/${KIBANA_CONTAINER_NAME}
	
reset:
	@${DOCKER_COMPOSE_STOP}
	rm -rf ${DATA_HOST_PATH}/${ES_CONTAINER_NAME}/*
	rm -rf ${DATA_HOST_PATH}/${KIBANA_CONTAINER_NAME}/*
	rm -rf ${ES_PATH}/certs/*
	@${DOCKER_COMPOSE_DOWN}

# Elasticsearch ############################################
.PHONY: es_en es_runing es_reset_password kibana_enrollment_token es_copy_ca es_service_token logstash_en
es_en:
	${DOCKER_COMPOSE_EXEC} ${ES_CONTAINER_NAME} bash
es_runing:
	@${DOCKER_COMPOSE_EXEC} ${ES_CONTAINER_NAME} curl --cacert ${CONTAINER_CA_CRT_PATH} -u elastic:${ELASTIC_PASSWORD} https://localhost:9200
es_reset_password:
	@${DOCKER_COMPOSE_EXEC} ${ES_CONTAINER_NAME} /usr/share/elasticsearch/bin/elasticsearch-reset-password -u ${ELASTIC_USERNAME}
kibana_enrollment_token:
	@${DOCKER_COMPOSE_EXEC} -u root ${ES_CONTAINER_NAME} /usr/share/elasticsearch/bin/elasticsearch-create-enrollment-token -s kibana
es_copy_ca:
	@${DOCKER} cp ${ES_CONTAINER_NAME}:/usr/share/elasticsearch/config/certs/http_ca.crt ${ES_PATH}
es_service_token:
	@${DOCKER_COMPOSE_EXEC} ${ES_CONTAINER_NAME} /usr/share/elasticsearch/bin/elasticsearch-service-tokens create elastic/kibana my-token
logstash_en:
	${DOCKER_COMPOSE_EXEC} ${LOGSTASH_CONTAINER_NAME} bash
elk_box_en:
	${DOCKER_COMPOSE_EXEC} ${ELK_BOX_CONTAINER_NAME} sh
# Kibana ###################################################
.PHONY:  kibana_en kibana_verification_code
kibana_en:
	${DOCKER_COMPOSE_EXEC} ${KIBANA_CONTAINER_NAME} bash
kibana_verification_code:
	${DOCKER_COMPOSE_EXEC} ${KIBANA_CONTAINER_NAME} /bin/kibana-verification-code
