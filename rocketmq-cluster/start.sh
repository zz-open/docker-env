#!/usr/bin/env bash

#同步模式
# SyncModelStart(){
#   #一主两从
#   cp ./conf/broker-m1/broker-sync.conf ./broker-m1/conf/broker.conf
#   cp ./conf/broker-slave1/broker.conf ./broker-slave1/conf/broker.conf
#   cp ./conf/broker-slave2/broker.conf ./broker-slave2/conf/broker.conf
#   docker-compose up -d rocketmq-nameserver2  rocketmq-nameserver3  rocketmq-broker-m1  rocketmq-broker-slave1  rocketmq-broker-slave2  rocketmq-dashboard
# }


# #异步模式
# AsyncModelStart(){
#   #一主两从
#   cp ./conf/broker-m1/broker-async.conf ./broker-m1/conf/broker.conf
#   cp ./conf/broker-slave1/broker.conf ./broker-slave1/conf/broker.conf
#   cp ./conf/broker-slave2/broker.conf ./broker-slave2/conf/broker.conf
#   docker-compose up -d rocketmq-nameserver2  rocketmq-nameserver3  rocketmq-broker-m1  rocketmq-broker-slave1  rocketmq-broker-slave2  rocketmq-dashboard
# }

# #DLedger模式
# DLedgerModelStart(){
#   cp ./conf/dledger/broker-n0.conf ./broker-m1/conf/broker.conf
#   cp ./conf/dledger/broker-n1.conf ./broker-slave1/conf/broker.conf
#   cp ./conf/dledger/broker-n2.conf ./broker-slave2/conf/broker.conf
#   docker-compose up -d rocketmq-nameserver2  rocketmq-nameserver3  rocketmq-broker-m1  rocketmq-broker-slave1  rocketmq-broker-slave2  rocketmq-dashboard
# }

# #默认是启动同步模式
# AsyncModelStart