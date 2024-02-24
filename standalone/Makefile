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

.PHONY: enter_redis enter_postgres enter_mongo download_redis_conf
enter_redis:
	@${DOCKER_COMPOSE_EXEC} ${REDIS_CONTAINER_NAME} bash
enter_postgres:
	@${DOCKER_COMPOSE_EXEC} ${POSTGRES_CONTAINER_NAME} bash
enter_mongo:
	@${DOCKER_COMPOSE_EXEC} ${MONGO_CONTAINER_NAME} bash
download_redis_conf:
	@wget -O "./redis.conf" "https://github.com/redis/redis/blob/7.2/redis.conf"