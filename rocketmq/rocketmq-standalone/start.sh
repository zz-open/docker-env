#!/bin/bash

#同步模式
SyncModelStart(){
  cp ./conf/broker-sync.conf ./broker1/conf/brker.conf
  docker-compose up -d rocketmq-nameserver1 rocketmq-broker1 rocketmq-dashboard
}


#异步模式
AsyncModelStart(){
  cp ./conf/broker-async.conf ./broker1/conf/broker.conf
  docker-compose up -d rocketmq-nameserver1 rocketmq-broker1 rocketmq-dashboard
}

#默认是启动同步模式
AsyncModelStart