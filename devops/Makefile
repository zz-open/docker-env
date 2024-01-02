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
	@echo "    build-app                            : build app"
	@echo "    tag-app                              : tag app"
	@echo "    push-app                             : push app"

test:
	@echo "test ..."

.PHONY: gitlab_initial_root_password jenkins_initial_admin_password
gitlab_initial_root_password:
	@${DOCKER_COMPOSE_EXEC} gitlab grep 'Password:' /etc/gitlab/initial_root_password

jenkins_initial_admin_password:
	@${DOCKER_COMPOSE_EXEC} jenkins bash -c "cat /var/jenkins_home/secrets/initialAdminPassword"

jenkins_up_speed:
	@cd ${JENKINS_HOME}/updates && \
	sed -i 's#http://updates.jenkins-ci.org/download#https://mirrors.tuna.tsinghua.edu.cn/jenkins#g' default.json && \
	sed -i 's#http://www.google.com#https://www.baidu.com#g' default.json

.PHONY: replace_conf build_app tag_app push_app
replace_conf:
	@sed -i "s/version:.*/version: \"${APPLICATION_VERSION}\"/g" ${HOST_CODE_CONF_PATH}

build_app:
	@$(MAKE) replace_conf
	${DOCKER_COMPOSE_BUILD} ${APPLICATION_CONTAINER_NAME}

tag_app:
	@${DOCKER_TAG} "${COMPOSE_TAG_NAME}" "${HARBOR_IMAGE}"

push_app:
	@${DOCKER_PUSH} "${HARBOR_IMAGE}"
	

.PHONY: enter-gitlab enter-jenkins
enter-gitlab:
	@${DOCKER_COMPOSE_EXEC} ${GITLAB_CONTAINER_NAME} bash
enter-jenkins:
	@${DOCKER_COMPOSE_EXEC} ${JENKINS_CONTAINER_NAME} bash