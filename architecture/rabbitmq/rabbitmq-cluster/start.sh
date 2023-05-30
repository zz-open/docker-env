#!/usr/bin/env bash

#docker-compose up -d rabbitmq1 rabbitmq2 rabbitmq3

#启用WEB控制台
docker exec rabbitmq1 /bin/bash -c 'rabbitmq-plugins enable rabbitmq_management'
docker exec rabbitmq2 /bin/bash -c 'rabbitmq-plugins enable rabbitmq_management'
docker exec rabbitmq3 /bin/bash -c 'rabbitmq-plugins enable rabbitmq_management'
#启用延迟队列插件
docker exec rabbitmq1 /bin/bash -c 'rabbitmq-plugins enable rabbitmq_delayed_message_exchange'
#日志跟踪插件
docker exec rabbitmq1 /bin/bash -c 'rabbitmq-plugins enable rabbitmq_tracing'