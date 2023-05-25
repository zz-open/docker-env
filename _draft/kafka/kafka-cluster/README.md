#kafka集群，3台kafka server, 1台 zookeeper

#kafka结论

1.如果Topic A被 Group1 和 Group2订阅，消息会同时发送到这2个group的consumer，互不影响
2.partition 编号是从0开始的
3.同一个Topic的partition只会被同一个Group的consumer消费
一个Group的consumer只会对应一个topic的partition
4.消费者实例的个数不能大于partition数量，否则会有消费实例分配不到任何分区而处于空跑状态
5.对于同一个Group内的消费者来说，一个分区最多只能被一个消费者消费
6.阿里云不建议分区数小于12，否则可能影响消费发送性能；也不建议超过100个，否则易引发消费端Rebalance
7.at least once， 也就是至少投递一次，保证消息不丢失，但是无法保证消息不重复。在出现网络问题、客户端重启时均有可能造成少量重复消息，此时应用消费端如果对消息重复比较敏感（例如订单交易类），则应该做消息幂等。
8.消费失败的处理
消费失败
消息队列Kafka版是按分区逐条消息顺序向前推进消费的，如果消费端拿到某条消息后执行消费逻辑失败，例如应用服务器出现了脏数据，导致某条消息处理失败，等待人工干预，那么有以下两种处理方式：

失败后一直尝试再次执行消费逻辑。这种方式有可能造成消费线程阻塞在当前消息，无法向前推进，造成消息堆积。
消息队列Kafka版没有处理失败消息的设计，实践中通常会打印失败的消息或者存储到某个服务（例如创建一个Topic专门用来放失败的消息），然后定时检查失败消息的情况，分析失败原因，根据情况处理。


9.一个Group最好对应一个Topic
10.不保证单个分区内绝对有序，在升级或者宕机时，会发生少量消息乱序（某个分区挂掉后把消息Failover到其它分区）

11.各自Partition内的offset是有序的


##网址####
1.kafka可视化网站：http://localhost:9111/

2.zookeeper可视化网站：http://localhost:9110/
https://zoonavigator.elkozmon.com/en/latest/docker/configuration.html#http-port
https://github.com/elkozmon/zoonavigator

#docker-compose.yaml设置中国时区
方式一：
environment:
- SET_CONTAINER_TIMEZONE=true
- CONTAINER_TIMEZONE=Asia/Shanghai

方式二：
environment:
- TZ=Asia/Shanghai

#####kafka设置
参考链接：https://www.cnblogs.com/xuliang666/p/11871389.html
listeners
listeners就是主要用来定义Kafka Broker的Listener的配置项。

advertised.listeners
advertised.listeners参数的作用就是将Broker的Listener信息发布到Zookeeper中

inter.broker.listener.name
inter.broker.listener.name：专门用于Kafka集群中Broker之间的通信

listener.security.protocol.map
配置监听者的安全协议的，比如PLAINTEXT、SSL、SASL_PLAINTEXT、SASL_SSL

listeners
是kafka真正bind的地址

advertised.listeners
是暴露给外部的listeners，如果没有设置，会用listeners

内外网分流
listener.security.protocol.map=EXTERNAL:PLAINTEXT,INTERNAL:PLAINTEXT
listeners=EXTERNAL://192.168.11.103:9092,INTERNAL://192.168.11.103:9093
inter.broker.listener.name=INTERNAL
advertised.listeners=EXTERNAL://192.168.11.103:9094,INTERNAL://192.168.11.103:9093

参考链接:https://blog.csdn.net/weixin_38251332/article/details/105638535
listeners=INSIDE://0.0.0.0:9092,OUTSIDE://<公网 ip>:端口(或者 0.0.0.0:端口)
advertised.listeners=INSIDE://localhost:9092,OUTSIDE://<宿主机ip>:<宿主机暴露的端口>
listener.security.protocol.map=INSIDE:SASL_PLAINTEXT,OUTSIDE:SASL_PLAINTEXT
kafka_inter_broker_listener_name:inter.broker.listener.name=INSIDE

listeners=INSIDE://0.0.0.0:9092,OUTSIDE://0.0.0.0:8092(<公网 ip>:端口)
advertised.listeners=INSIDE://127.0.0.1:9092,OUTSIDE://hostname:8092(<公网 ip>:端口)

#1.kafka-connect 链接：https://docs.confluent.io/platform/current/installation/docker/config-reference.html#kconnect-long-configuration
#2.kafka-connect-datagen kafka测试数据构建 https://blog.csdn.net/litlit023/article/details/112298723
#3.使用Kafka Connect将MySQL数据同步至消息队列Kafka版 https://help.aliyun.com/document_detail/141688.html

# For testing small segments 16MB and retention of 128MB

[comment]: <> (KAFKA_LOG_SEGMENT_BYTES: 16777216)

[comment]: <> (KAFKA_LOG_RETENTION_BYTES: 134217728)


##网址：3.http://localhost:19091