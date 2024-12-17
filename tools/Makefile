include ../common/env/.env.common
include ../common/env/.env.custom

.PHONY: help test
help:
	@echo "usage: make <option>"
	@echo "options and effects:"
	@echo "    help                     : Show help"
	@echo "    test                     : Test ..."
	@echo "    init_network             : 初始化网络，所有容器分配固定ip"
	@echo "    rm_all_containers        : 删除所有容器"
	@echo "    reset_docker        		: 重置docker"

test:
	@echo "test ..."

.PHONY: init_network rm_all_containers reset_docker
init_network:
	@${DOCKER} network ls
	@${DOCKER} network create --driver ${NETWORKS_DRIVER} --subnet=${FRONTEND_SUBNET} --gateway=${FRONTEND_SUBNET_GATEWAY} ${FRONTEND_NETWORK_NAME}
	@${DOCKER} network create --driver ${NETWORKS_DRIVER} --subnet=${BACKEND_SUBNET} --gateway=${BACKEND_SUBNET_GATEWAY} ${BACKEND_NETWORK_NAME}
	@${DOCKER} network ls

rm_all_containers:
	@${DOCKER} ps -a -q | xargs ${DOCKER} rm -f

reset_docker:
	@${DOCKER} network prune
	@${DOCKER} images purge -a
	@${DOCKER} volume prune -a
	@${DOCKER} system prune -a
