include ../common/mk/common.mk
include ../common/env/.env.common
include ../common/env/.env.custom

.PHONY: help test
help:
	@echo "usage: make <option>"
	@echo "options and effects:"
	@echo "    help                     : Show help"
	@echo "    test                     : Test ..."
	@echo "    init_network             : 初始化网络，所有容器分配固定ip"

test:
	@echo "test ..."

.PHONY: init_network
	@${DOCKER} network ls
	@${DOCKER} network create --driver ${NETWORKS_DRIVER} --subnet=${FRONTEND_SUBNET} --gateway=${FRONTEND_SUBNET_GATEWAY} ${FRONTEND_NETWORK_NAME}
	@${DOCKER} network create --driver ${NETWORKS_DRIVER} --subnet=${BACKEND_SUBNET} --gateway=${BACKEND_SUBNET_GATEWAY} ${BACKEND_NETWORK_NAME}
	@${DOCKER} network ls

# reset_docker:
# 	@${DOCKER} network prune
# 	@${DOCKER} images purge -a
# 	@${DOCKER} volume prune -a
# 	@${DOCKER} system prune -a

# rm-all_containers:
# 	@${DOCKER} ps -a -q | xargs ${DOCKER} rm -f
	
# push:
# 	@git add .
# 	@git commit -m "脚本自动push"
# 	@git push origin main

# append_alias:
# 	@echo 'alias dce="${DC_OPTIONS}"' >> ~/.zshrc
# 	@echo 'alias dcel="${DC_WITH_LOCAL_OPTIONS}"' >> ~/.zshrc
# 	@source ~/.zshrc
# 	@echo "追加别名命令成功"
# info:
# 	@echo "当前环境变量:"
# 	@echo "    $(ENV_VARS)"

# first_init:
# 	@echo "首次使用该项目需要按照以下步骤进行初始化..."