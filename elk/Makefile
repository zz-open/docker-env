include .env
include ../_common/common.mk

CONTAINERS=${ELASTICSEARCH_CONTAINER_NAME} ${REDIS_CONTAINER_NAME_NODE2}

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

.PHONY: build start
build:
	@${DOCKER_COMPOSE_BUILD} ${CONTAINERS}

start:
	@${DOCKER_COMPOSE_UP} -d ${CONTAINERS}

# Elasticsearch ############################################
.PHONY: enrollment-token copy-ca reset-password service-token
kibana-enrollment-token:
	@${DOCKER_COMPOSE_EXEC} ${ELASTICSEARCH_CONTAINER_NAME} /usr/share/elasticsearch/bin/elasticsearch-create-enrollment-token -s kibana
copy-ca:
	@${DOCKER} cp ${ELASTICSEARCH_CONTAINER_NAME}:/usr/share/elasticsearch/config/certs/http_ca.crt ${ELASTICSEARCH_PATH}
reset-password:
	@${DOCKER_COMPOSE_EXEC} ${ELASTICSEARCH_CONTAINER_NAME} /usr/share/elasticsearch/bin/elasticsearch-reset-password -u elastic
service-token:
	@${DOCKER_COMPOSE_EXEC} ${ELASTICSEARCH_CONTAINER_NAME} /usr/share/elasticsearch/bin/elasticsearch-service-tokens create elastic/kibana my-token

# Kibana ###################################################
