include ./containers/_common/common.mk
include ./containers/_common/.env

.PHONY: help test
help:
	@echo "usage: make <option>"
	@echo "options and effects:"
	@echo "    help                     : Show help"
	@echo "    test                     : Test ..."
	@echo "    init_network             : 初始化网络，所有项目使用同一个子网"

test:
	@echo "test ..."
	@echo ${DOCKER}

.PHONY: init_network reset_docker push
init_network:
	@${DOCKER} network ls
	@${DOCKER} network create --driver ${NETWORKS_DRIVER} --subnet=${FRONTEND_SUBNET} --gateway=${FRONTEND_SUBNET_GATEWAY} ${FRONTEND_NETWORK_NAME}
	@${DOCKER} network create --driver ${NETWORKS_DRIVER} --subnet=${BACKEND_SUBNET} --gateway=${BACKEND_SUBNET_GATEWAY} ${BACKEND_NETWORK_NAME}
	@${DOCKER} network ls

reset_docker:
	@${DOCKER} system prune -a
	@${DOCKER} network prune -a
	@${DOCKER} image purge -a
	@${DOCKER} volume prune -a

push:
	@git add .
	@git commit -m "脚本自动push"
	@git push origin main
