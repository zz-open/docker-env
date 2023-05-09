# NSQ [官网](https://nsq.io)


```text
nsqadmin后台地址：http://localhost:4171

总结：
1.发布订阅模式，nsq采取的是push的模式
2.channel相当于是队列
3.同一个topic有多个channel相当于复制
4.如果有多个consumer订阅到了同一个topic的同一个channel，是随机选择消费的
5.nsqlookup维护了topic，channel信息以及管理nsqd结点信息
6.nsqd通过消息的确认机制(FIN CMD)来确保消息至少被消费一次(at least once)。对于go-nsq, 只要HandleMessage()不返回异常，go-nsq会自动发送FIN CMD，自动确认。如果返回异常，除非达到最大重试次数，否则go-nsq会将发送REQ CMD, 使消息重新被放回消息队列，以便将来重试。
7.nsqadmin指标含义：https://blog.csdn.net/wxs19970115/article/details/103980673
8.去中心化的拓扑结构
9.producer,consumer,nsqd,topic,channel,nsqlookup

问题：
1.消息无序，某些业务场景不适用
2.消息基于内存，超出channel大小的才会被持久化
3.历史消息无法重复消费，没有存储
4.服务非正常关闭可能导致消息丢失
5.nsq提供了一种消费者端进行服务发现的模型，所以无需告诉消费者去哪寻找对于的主题(Topic)在哪个nsqd实例上。
然而，它并没有提供一种方案去解决一个生产者应该把消息发布到哪个nsqd实例上的问题，虽然nsqd推荐一个生产者对于部署一个nsqd实例，来实现product：nsqd= 1:1 的部署方案，但是在具体生产环境下，随着服务数量的增长，这种部署方案很难去实施，所以需要一个协调器去平衡所有创建的主题(Topic)，使之满足product:nsqd=n:m(n >= m)，然后通知所有生产者，它们应该把消息发布到哪个nsqd实例上。

```

