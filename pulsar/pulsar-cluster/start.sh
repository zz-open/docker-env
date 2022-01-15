#!/bin/sh

# 1.拷贝配置文件到各个容器的映射目录

cp ./conf/application.properties ./pulsar-manager1/conf/application.properties
cp ./conf/bkvm.conf ./pulsar-manager1/conf/bkvm.conf
cp ./conf/bookeeper.conf ./bookeeper1/conf/bookeeper.conf
cp ./conf/proxy.conf ./pulsar-proxy/conf/proxy.conf
cp ./conf/zookeeper.conf ./zoo1/conf/zookeeper.conf

cp ./conf/broker.conf ./pulsar1/conf/broker.conf
cp ./conf/broker.conf ./pulsar2/conf/broker.conf
cp ./conf/broker.conf ./pulsar3/conf/broker.conf

docker compose up -d zoo1 pulsar-init-metadata bookeeper1 pulsar1 pulsar2 pulsar3 pulsar-proxy pulsar-manager1