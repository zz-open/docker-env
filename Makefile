include _common/common.mk
include _common/.env

.PHONY: help test
help:
	@echo "usage: make <option>"
	@echo "options and effects:"
	@echo "    help                     : Show help"
	@echo "    test                     : Test ..."
	@echo "    init_network             : 初始化网络，所有项目使用同一个子网"
	@echo "    init_data_dir            : 初始化数据目录"

test:
	@echo "test ..."

.PHONY: init_network init_data_dir init_mysql_data_dir download_redis_conf reset_docker
init_network:
	@${DOCKER} network create --driver ${NETWORKS_DRIVER} --subnet=${FRONTEND_SUBNET} --gateway=${FRONTEND_SUBNET_GATEWAY} ${FRONTEND_NETWORK_NAME}
	${DOCKER} network create --driver ${NETWORKS_DRIVER} --subnet=${BACKEND_SUBNET} --gateway=${BACKEND_SUBNET_GATEWAY} ${BACKEND_NETWORK_NAME}
	${DOCKER} network ls

reset_docker:
	@${DOCKER} system prune -a
	${DOCKER} network prune -a
	${DOCKER} image purge -a
	${DOCKER} volume prune -a