# Rabbitmq

1.producer,consumer,exchange,queue,broker,binding,RoutingKey (路由键) 
2.参考网址：https://blog.csdn.net/weixin_37717557/article/details/104469749

###链接：https://hub.docker.com/r/bitnami/rabbitmq
https://registry.hub.docker.com/_/rabbitmq?tab=description
https://www.rabbitmq.com/configure.html#supported-environment-variables


# web界面
```text
rabbitmq默认web界面管理插件是关闭的，只要通过命令开启就行
docker compose exec rabbitmq1 bash
rabbitmq-plugins enable rabbitmq_management

http://localhost:15672
```


#镜像模式
1.把需要的队列做成镜像队列，存在与多个节点属于RabbitMQ的HA方案。
2.消息实体会主动在镜像节点间同步，而不是在客户端取数据时临时拉取。
3.该模式带来的副作用也很明显，除了降低系统性能外，如果镜像队列数量过多，加之大量的消息进入，集群内部的网络带宽将会被这种同步通讯大大消耗掉。
4.所以在对可靠性要求较高的场合中适用。
5.许多公司为RabbitMQ集群设置了内存模式，认为内存模式无需落盘，能够提升系统性能。但实际上，RabbitMQ官方文档指出，内存模式无法提升系统性能，
它只提升了产生元信息数据的速度，即Ram Node指将元信息存入内存，可以提升元信息的创建速度，而不是消息数据的性能。这是使用RabbitMQ时的一个常见误区。
6.镜像队列不是负载均衡，镜像队列无法提升消息的传输效率
7.对exclusive队列设置镜像并不会有任何作用，因为exclusive队列是连接独占的，当连接断开，队列自动删除
8.当master结点宕机之后，镜像队列仍然可以进行消费，普通队列无法继续消费，界面操作可以验证


#普通模式
1.默认模式，以两个节点（rabbit01、rabbit02）为例来进行说明。对于Queue来说，消息实体只存在于其中一个节点rabbit01（或者rabbit02），
rabbit01和rabbit02两个节点仅有相同的元数据，即队列的结构。
当消息进入rabbit01节点的Queue后，consumer从rabbit02节点消费时，
RabbitMQ会临时在rabbit01、rabbit02间进行消息传输，
把A中的消息实体取出并经过B发送给consumer。所以consumer应尽量连接每一个节点，
从中取消息。即对于同一个逻辑队列，要在多个节点建立物理Queue。
否则无论consumer连rabbit01或rabbit02，出口总在rabbit01，会产生瓶颈。
当rabbit01节点故障后，rabbit02节点无法取到rabbit01节点中还未消费的消息实体。
如果做了消息持久化，那么得等rabbit01节点恢复，然后才可被消费；如果没有持久化的话，就会产生消息丢失的现象。


##RabbitMQ集群访问的多种方式
- 通过在配置文件中列出群集节点进行声明
- 基于DNS的发现
- 使用AWS（EC2）实例发现（通过插件）
- 使用Kubernetes发现（通过插件）
- 基于Consul的发现（通过插件）
- 使用基于etcd的发现（通过插件）
- 使用rabbitmqctl手动

1.死信队列
2.延迟队列
队列中的消息不能立马被消费者消费，需要经过延迟时间之后才能被消费
3.重试队列
重试的消息在延迟的某个时间点（业务可设置）后，再次投递给消费者。而如果一直这样重复消费都持续失败到一定次数，就会投递到死信队列，最后需要进行人工干预。


1.queue类型
Classic：经典镜像队列。
Quorum：仲裁队列。

# 问题
```text
1.RabbitMQ登录提示User can only log in via localhost的解决方案
RabbitMQ默认只有一个guest帐号，guest帐号只能在RabbitMQ安装服务器上登录，
在其它服务器用guest登录提示User can only log in via localhost。

2.COOKIE新版本不能通过环境变量设置，需要直接把.erlang.cookie文件赋值，并且注意权限
```

























