include .env
include ../../conf/mk/common.mk

.PHONY: help test
help:
	@echo "usage: make <option>"
	@echo "options and effects:"
	@echo "    help                     : Show help"
	@echo "    test                     : Test ..."

test:
	@echo "test ..."

.PHONY: enter_redis enter_postgres enter_mongo download_redis_conf enter_mysql8
enter_mysql8:
	$(call FUNC_DC_EXEC,${MYSQL8_CONTAINER_NAME},bash)
enter_redis:
	$(call FUNC_DC_EXEC,${REDIS_CONTAINER_NAME},bash)
enter_postgres:
	$(call FUNC_DC_EXEC,${POSTGRES_CONTAINER_NAME},bash)
enter_mongo:
	$(call FUNC_DC_EXEC,${MONGO_CONTAINER_NAME},bash)
download_redis_conf:
	@wget -O "./redis.conf" "https://github.com/redis/redis/blob/7.2/redis.conf"
