#!/usr/bin/env bash

# 删除消费者组, --delete --group bingo-group2
./kafka-consumer-groups.sh --bootstrap-server kafka1:9092 --delete --group bingo-group2
./kafka-consumer-groups --bootstrap-server kafka1:9092 --delete --group bingo-group2
# 查询消费者组详情, --describe --group bingo-group
./kafka-consumer-groups.sh --bootstrap-server kafka1:9092 --describe --group bingo-group
./kafka-consumer-groups --bootstrap-server kafka1:9092 --describe --group bingo-group
# 查询消费者组列表
./kafka-consumer-groups.sh --bootstrap-server kafka1:9092 --list
./kafka-consumer-groups --bootstrap-server kafka1:9092 --list

#查看zookeeper集群状态
#./bin/zkServer.sh status












