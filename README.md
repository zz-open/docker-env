# docker-env

## 国内镜像仓库加速源
- [清华源](https://mirrors.tuna.tsinghua.edu.cn/help)
- [阿里源](https://mirrors.tuna.tsinghua.edu.cn/help)
- [网易源](https://mirrors.tuna.tsinghua.edu.cn/help)
- [火山源](https://developer.volcengine.com/articles/7119384305456906277)
- [docker hub](https://hub.docker.com)

## 介绍
基于docker-compose构建的工作环境，节省时间提高效率

## 约定
- 单节点容器
- 集群容器
- service,hostname,container推荐设置为相同名字
- 统一加入zznetwork 网络，方便相互通信

### 初始化docker网络
```shell
bash _scripts/init-network.sh
```

### 公共配置
```text
TZ=Asia/Shanghai
```

## 目标
### 单服务
- [x] busybox
- [x] portainer
- [x] redis
- [x] mysql
- [x] nginx
- [x] apache
- [x] caddy
- [x] python
- [x] golang
- [x] postgres
- [x] mongodb
- [x] memcached
- [x] beanstalkd

- [ ] openresty
- [ ] etcd
- [ ] tomcat
- [ ] zookeeper
- [ ] dtm
- [ ] selenium
- [ ] soketi
- [ ] ssdb
- [ ] node
- [ ] supervisord

### 集成环境
- [x] lanmp5(apache2+nginx+php-fpm5.6)

### devops
- [x] ELK
- [x] canal(server+admin)
- [x] nsq nsqlookupd nsqadmin
- [ ] clickhouse
- [x] etcd
- [ ] monitor(prometheus+grafana等)

### 消息队列
- [x] rabbitmq
- [x] rocketmq
- [x] kafka+zookeeper
- [x] pulsar(pulsar+manager)

### 集群
- [x] kafka
- [ ] redis cluster
- [ ] redis sentinel
- [x] mha
- [x] memcached