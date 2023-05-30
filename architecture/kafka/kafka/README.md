# kafka

#https://github.com/confluentinc/cp-all-in-one/blob/7.0.1-post/cp-all-in-one/docker-compose.yml
链接：https://github.com/conduktor/kafka-stack-docker-compose
1.yum install https://dl.fedoraproject.org/pub/epel/epel-release-latest-8.noarch.rpm
2.yum install find which


1.同一个topic的消息可以被不同的消费组重复消费，这和其他的消息队列很不一样。消息消费完毕后仍然存在直到老化被自动删除
2.一个topic只能被一个分区的一个消费者组的任意一个消费者消费，同一个消费者组负载消费订阅的topic，但只能是一个。
3.kafka的消息是持久化的，消费者的commit offset会被记录在一个__consumer_offsets内部topic中，默认是50个
4.kafka是顺序IO，先写内存，异步写磁盘

问题：
#https://blog.csdn.net/u013411339/article/details/107572522
5.kafka历史数据如何清理？
6.kafka如何实现延时队列？
7.kafka的Log Retention如何理解？
8.kafka的Log Compaction如何理解？
9.kafka的零拷贝？
所谓的零拷贝是指将数据直接从磁盘文件复制到网卡设备中，而不需要经由应用程序之手。
零拷贝大大提高了应用程序的性能，减少了内核和用户模式之间的上下文切换。
对 Linux 操作系统而言，零拷贝技术依赖于底层的 sendfile() 方法实现。
对应于 Java 语言，FileChannal.transferTo() 方法的底层实现就是 sendfile() 方法。

10.kafka的延时操作原理？
Kafka 中有多种延时操作，比如延时生产，还有延时拉取（DelayedFetch）、延时数据删除（DelayedDeleteRecords）等。
延时操作创建之后会被加入延时操作管理器（DelayedOperationPurgatory）来做专门的处理。延时操作有可能会超时，每个延时操作管理器都会配备一个定时器（SystemTimer）来做超时管理，定时器的底层就是采用时间轮（TimingWheel）实现的。

11.kafka的控制器作用
在 Kafka 集群中会有一个或多个 broker，其中有一个 broker 会被选举为控制器（Kafka Controller），它负责管理整个集群中所有分区和副本的状态。当某个分区的 leader 副本出现故障时，由控制器负责为该分区选举新的 leader 副本。当检测到某个分区的 ISR 集合发生变化时，由控制器负责通知所有broker更新其元数据信息。当使用 kafka-topics.sh 脚本为某个 topic 增加分区数量时，同样还是由控制器负责分区的重新分配。

12.kafka消费者的rebalance？消费者协调器和消费组协调器

就目前而言，一共有如下几种情形会触发再均衡的操作：

有新的消费者加入消费组。

有消费者宕机下线。消费者并不一定需要真正下线，例如遇到长时间的GC、网络延迟导致消费者长时间未向 GroupCoordinator 发送心跳等情况时，GroupCoordinator 会认为消费者已经下线。

有消费者主动退出消费组（发送 LeaveGroupRequest 请求）。比如客户端调用了 unsubscrible() 方法取消对某些主题的订阅。

消费组所对应的 GroupCoorinator 节点发生了变更。

消费组内所订阅的任一主题或者主题的分区数量发生变化。

GroupCoordinator 是 Kafka 服务端中用于管理消费组的组件。而消费者客户端中的 ConsumerCoordinator 组件负责与 GroupCoordinator 进行交互。


13.kafka的幂等是如何实现的？
14.kafka的事务是什么？
15.kafka只支持pull模式
16.kafka不支持消息追踪
17.kafka发送确认机制
Acks
Acks的说明如下：

acks=0：无需服务端的Response、性能较高、丢数据风险较大。
acks=1：服务端主节点写成功即返回Response、性能中等、丢数据风险中等、主节点宕机可能导致数据丢失。

acks=all：服务端主节点写成功且备节点同步成功才返回Response、性能较差、数据较为安全、主节点和备节点都宕机才会导致数据丢失。
一般建议选择acks=1，重要的服务可以设置acks=all。

18.kafka batch机制提升发送性能
19.kafka消息单个分区内是按照发送顺序储存的，基本有序
单个分区（Partition）内，消息是按照发送顺序储存的，是基本有序的。
默认情况下，消息队列Kafka版为了提升可用性，并不保证单个分区内绝对有序，在升级或者宕机时，会发生少量消息乱序（某个分区挂掉后把消息Failover到其它分区）。
对于包年包月计费模式下的专业版实例，如果业务要求分区保证严格有序，请在创建Topic时选择使用Local存储。

20.消费者示例建议不要大于topic的partion数量，消费实例的个数不要大于分区的数量，否则会有消费实例分配不到任何分区而处于空跑状态。这个负载均衡发生的时间，除了第一次启动上线之外，后续消费实例发生重启、增加、减少等变更时，都会触发一次负载均衡。


消费位点
每个Topic会有多个分区，每个分区会统计当前消息的总条数，这个称为最大位点MaxOffset。

消息队列Kafka版Consumer会按顺序依次消费分区内的每条消息，记录已经消费了的消息条数，称为消费位点ConsumerOffset。

剩余的未消费的条数（也称为消息堆积量）=MaxOffset-ConsumerOffset。

消费位点提交
消息队列Kafka版消费者有两个相关参数：

enable.auto.commit：是否采用自动提交位点机制。默认值为true，表示默认采用自动提交机制。
auto.commit.interval.ms： 自动提交位点时间间隔。默认值为1000，即1s。
这两个参数组合的结果就是，每次poll数据前会先检查上次提交位点的时间，如果距离当前时间已经超过参数auto.commit.interval.ms规定的时长，则客户端会启动位点提交动作。

因此，如果将enable.auto.commit设置为true，则需要在每次poll数据时，确保前一次poll出来的数据已经消费完毕，否则可能导致位点跳跃。

如果想自己控制位点提交，请把enable.auto.commit设为false，并调用commit(offsets)函数自行控制位点提交。

消费位点重置
以下两种情况，会发生消费位点重置：

当服务端不存在曾经提交过的位点时（例如客户端第一次上线）。
当从非法位点拉取消息时（例如某个分区最大位点是10，但客户端却从11开始拉取消息）。
Java客户端可以通过auto.offset.reset来配置重置策略，主要有三种策略：
latest：从最大位点开始消费。
earliest：从最小位点开始消费。
none：不做任何操作，即不重置。


#参考配置:https://registry.hub.docker.com/r/wurstmeister/kafka
#HOSTNAME_COMMAND: curl http://169.254.169.254/latest/meta-data/public-hostname
#KAFKA_ADVERTISED_LISTENERS: INSIDE://:9092,OUTSIDE://_{HOSTNAME_COMMAND}:9094
#KAFKA_LISTENERS: INSIDE://:9092,OUTSIDE://:9094
#KAFKA_LISTENER_SECURITY_PROTOCOL_MAP: INSIDE:PLAINTEXT,OUTSIDE:PLAINTEXT
#KAFKA_INTER_BROKER_LISTENER_NAME: INSIDE


## KAFKA_CFG_LISTENERS

## KAFKA_CFG_ADVERTISED_LISTENERS

## KAFKA_CFG_LISTENER_SECURITY_PROTOCOL_MAP