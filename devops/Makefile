include .env
include ../_common/common.mk

HOST_CODE_PATH=./application/hello
HOST_CODE_CONF_PATH=./application/hello/config.yaml
COMPOSE_TAG_NAME=${COMPOSE_PROJECT_NAME}-${APPLICATION_CONTAINER_NAME}:${APPLICATION_VERSION}
HARBOR_IMAGE=${HARBOR_HOST}/${PRIVATE_HARBOR_PROJECT}-${APPLICATION_CONTAINER_NAME}:${APPLICATION_VERSION}

.PHONY: help test
help:
	@echo "usage: make <option>"
	@echo "options and effects:"
	@echo "    help                     			: Show help"
	@echo "    test                     			: Test ..."
	@echo "    gitlab_initial_root_password         : 获取gitlab初始化密码"
	@echo "    jenkins_initial_admin_password       : 获取jenkins初始化密码"
	@echo "    build       							: 获取jenkins初始化密码"
	@echo "    tag       							: 获取jenkins初始化密码"
	@echo "    push       							: 获取jenkins初始化密码"

test:
	@echo "test ..."

.PHONY: gitlab_initial_root_password jenkins_initial_admin_password
gitlab_initial_root_password:
	@${DOCKER_COMPOSE_EXEC} -it gitlab grep 'Password:' /etc/gitlab/initial_root_password

jenkins_initial_admin_password:
	@${DOCKER_COMPOSE_EXEC} -it jenkins bash -c "cat /var/jenkins_home/secrets/initialAdminPassword"

.PHONY: replace_conf build tag push
replace_conf:
	@sed -i "s/version:.*/version: \"${APPLICATION_VERSION}\"/g" ${HOST_CODE_CONF_PATH}

build:
	@$(MAKE) replace_conf
	@${DOCKER_COMPOSE_BUILD} ${APPLICATION_CONTAINER_NAME}

tag:
    @${DOCKER_TAG} "${COMPOSE_TAG_NAME}" "${HARBOR_IMAGE}"

push:
    @${DOCKER_PUSH} "${HARBOR_IMAGE}"