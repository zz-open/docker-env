#!/bin/bash

docker exec -it --user root kafka1 bash && cd /bin

# 删除消费者组, --delete --group bingo-group2
./kafka-consumer-groups.sh --bootstrap-server kafka1:9092 --delete --group bingo-group2
./kafka-consumer-groups --bootstrap-server kafka1:9092 --delete --group bingo-group2
# 查询消费者组详情, --describe --group bingo-group
./kafka-consumer-groups.sh --bootstrap-server kafka1:9092 --describe --group bingo-group
./kafka-consumer-groups --bootstrap-server kafka1:9092 --describe --group bingo-group
# 查询消费者组列表
./kafka-consumer-groups.sh --bootstrap-server kafka1:9092 --list
./kafka-consumer-groups --bootstrap-server kafka1:9092 --list

# 创建topic，topic名称不建议带点符号
./kafka-topics.sh --create --topic bingo --bootstrap-server kafka1:9092 --partitions 1 --replication-factor 1
./kafka-topics --create --topic bingo --bootstrap-server kafka1:9092 --partitions 1 --replication-factor 1

# 删除topic

# 修改topic老化时间，log.retention.hours（仅对没有设置老化时间的topic生效），老化时间即消息的最长保留时间，消费者必须在此时间结束前消费消息，否则消息将被删除。删除的消息，无法被消费。

#查看zookeeper集群状态
#./bin/zkServer.sh status












