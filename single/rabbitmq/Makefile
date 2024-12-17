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

.PHONY: reset
reset:
	@${DOCKER_COMPOSE_STOP}
	rm -rf ${DATA_HOST_PATH}/${ROCKETMQ_BROKER_CONTAINER_NAME}
	@${DOCKER_COMPOSE_DOWN}

.PHONY: enable_plugin_command_list list_plugin print_plugin_dir enter_rabbitmq
enable_plugin_command_list:
	@${DOCKER_COMPOSE_EXEC} ${RABBITMQ_CONTAINER_NAME} bash -c "rabbitmq-plugins enable rabbitmq_mqtt"
	@${DOCKER_COMPOSE_EXEC} ${RABBITMQ_CONTAINER_NAME} bash -c "rabbitmq-plugins enable rabbitmq_stomp"
	@${DOCKER_COMPOSE_EXEC} ${RABBITMQ_CONTAINER_NAME} bash -c "rabbitmq-plugins enable rabbitmq_shovel"
	@${DOCKER_COMPOSE_EXEC} ${RABBITMQ_CONTAINER_NAME} bash -c "rabbitmq-plugins enable rabbitmq_shovel"
	@${DOCKER_COMPOSE_EXEC} ${RABBITMQ_CONTAINER_NAME} bash -c "rabbitmq-plugins enable rabbitmq_federation"
	@${DOCKER_COMPOSE_EXEC} ${RABBITMQ_CONTAINER_NAME} bash -c "rabbitmq-plugins enable rabbitmq_federation_management"
	@${DOCKER_COMPOSE_EXEC} ${RABBITMQ_CONTAINER_NAME} bash -c "rabbitmq-plugins enable rabbitmq_web_mqtt"
	@${DOCKER_COMPOSE_EXEC} ${RABBITMQ_CONTAINER_NAME} bash -c "rabbitmq-plugins enable rabbitmq_consistent_hash_exchange"
	@${DOCKER_COMPOSE_EXEC} ${RABBITMQ_CONTAINER_NAME} bash -c "rabbitmq-plugins enable rabbitmq_sharding"
	@${DOCKER_COMPOSE_EXEC} ${RABBITMQ_CONTAINER_NAME} bash -c "rabbitmq-plugins enable rabbitmq_amqp1_0"
# 启用WEB控制台, rabbitmq默认web界面管理插件是关闭的
	@${DOCKER_COMPOSE_EXEC} ${RABBITMQ_CONTAINER_NAME} bash -c "rabbitmq-plugins enable rabbitmq_management"
	@${DOCKER_COMPOSE_EXEC} ${RABBITMQ_CONTAINER_NAME} bash -c "rabbitmq-plugins enable rabbitmq_delayed_message_exchange"
	@${DOCKER_COMPOSE_EXEC} ${RABBITMQ_CONTAINER_NAME} bash -c "rabbitmq-plugins enable rabbitmq_tracing"
	@${DOCKER_COMPOSE_EXEC} ${RABBITMQ_CONTAINER_NAME} bash -c "rabbitmq-plugins enable rabbitmq_stream"
	@${DOCKER_COMPOSE_EXEC} ${RABBITMQ_CONTAINER_NAME} bash -c "rabbitmq-plugins enable rabbitmq_stream_management"


list_plugin:
	@${DOCKER_COMPOSE_EXEC} ${RABBITMQ_CONTAINER_NAME} bash -c "rabbitmq-plugins list"
print_plugin_dir:
	@${DOCKER_COMPOSE_EXEC} ${RABBITMQ_CONTAINER_NAME} bash -c "rabbitmq-plugins directories -s"
enter_rabbitmq:
	@${DOCKER_COMPOSE_EXEC} ${RABBITMQ_CONTAINER_NAME} bash
