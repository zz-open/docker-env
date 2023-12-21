#!/usr/bin/env bash

enablePlugin(){
#  docker exec rabbitmq /bin/bash -c 'rabbitmq-plugins enable rabbitmq_mqtt'
#  docker exec rabbitmq /bin/bash -c 'rabbitmq-plugins enable rabbitmq_stomp'
#  docker exec rabbitmq /bin/bash -c 'rabbitmq-plugins enable rabbitmq_shovel'
#  docker exec rabbitmq /bin/bash -c 'rabbitmq-plugins enable rabbitmq_federation'
#  docker exec rabbitmq /bin/bash -c 'rabbitmq-plugins enable rabbitmq_federation_management'
#  docker exec rabbitmq /bin/bash -c 'rabbitmq-plugins enable rabbitmq_web_mqtt'
#  docker exec rabbitmq /bin/bash -c 'rabbitmq-plugins enable rabbitmq_consistent_hash_exchange'
#  docker exec rabbitmq /bin/bash -c 'rabbitmq-plugins enable rabbitmq_sharding'
#  docker exec rabbitmq /bin/bash -c 'rabbitmq-plugins enable rabbitmq_amqp1_0'
}

printRabbitmqPlugins(){
  docker exec rabbitmq /bin/bash -c 'rabbitmq-plugins list'
}

enableRabbitmqManagementPlugin(){
  # 启用WEB控制台, rabbitmq默认web界面管理插件是关闭的
  docker exec rabbitmq bash -c 'rabbitmq-plugins enable rabbitmq_management'
}

enableRabbitmqDelayedMessageExchangePlugin(){
  # 启用延迟队列插件
  docker exec rabbitmq bash -c 'rabbitmq-plugins enable rabbitmq_delayed_message_exchange'
}

enableRabbitmqTracingPlugin(){
  # 日志跟踪插件
  docker exec rabbitmq bash -c 'rabbitmq-plugins enable rabbitmq_tracing'
}

enableRabbitmqStreamManagementPlugin(){
  docker exec rabbitmq bash -c 'rabbitmq-plugins enable rabbitmq_stream'
  docker exec rabbitmq bash -c 'rabbitmq-plugins enable rabbitmq_stream_management'
}

# enableRabbitmqDelayedMessageExchangePlugin
# enableRabbitmqTracingPlugin
# enableRabbitmqStreamManagementPlugin

printRabbitmqPlugins
enableRabbitmqManagementPlugin
