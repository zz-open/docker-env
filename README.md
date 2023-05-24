# container-env

[清华源](https://mirrors.tuna.tsinghua.edu.cn/help)
[阿里源](https://mirrors.tuna.tsinghua.edu.cn/help)
[网易源](https://mirrors.tuna.tsinghua.edu.cn/help)
[火山源](https://mirrors.tuna.tsinghua.edu.cn/help)
[docker hub](https://hub.docker.com)

```text
基于docker-compose构建的工作环境
使用docker-compose方式组织，方便构建各种工作环境，节省时间提高效率

1.单节点容器方便平时工作
2.集群方式
3.service,hostname,container推荐设置为一致名字，当有多个容器service名字一样的时候，docker-compose down的时候
会一并销毁。
4.统一加入backend网络，并设置单独内网ip方便通信
```

# 公共配置
TZ=Asia/Shanghai

# 172.19.0.x
## redis
REDIS_IP=172.19.0.11

REDIS_MOD_IP=172.19.0.12

## mysql
MYSQL_IP=172.19.0.13

MYSQL_8_IP=172.19.0.14

## apache
APACHE2_IP=172.19.0.15

## nginx
NGINX_IP=172.19.0.16

## openresty
OPENRESTY_IP=172.19.0.17

## postgres
POSTGRES_IP=172.19.0.18

## beanstalkd
BEANSTALKD_IP=172.19.0.19

BEANSTALKD_CONSOLE_IP=172.19.0.20

## caddy
CADDY_IP=172.19.0.21

## clickhouse
CLICKHOUSE_IP=172.19.0.22

## etcd
ETCD_IP=172.19.0.23

## rabbitmq
RABBITMQ_IP=172.19.0.24

## tomcat
TOMCAT_IP=172.19.0.25

## python3
PYTHON_IP=172.19.0.26

## nsq
NSQ_IP=172.19.0.27

NSQLOOKUPD_IP=172.19.0.28

NSQLADMIN_IP=172.19.0.29

## zookeeper
ZOOKEEPER_IP=172.19.0.30

## mongodb
MONGO_IP=172.19.0.31

## memcached
MEMCACHED_IP=172.19.0.33

## golang
GOLANG_IP=172.19.0.34

## dtm
DTM_IP=172.19.0.38

## mailcatcher
MAILCATCHER_IP=172.19.0.39

## mailhog
MAIL_HOG_IP=172.19.0.40

## maildev
MAIL_DEV_IP=172.19.0.41

## soketi
SOKETI_IP=172.19.0.42

## ssdb
SSDB_IP=172.19.0.43

## selenium
SELENIUM_IP=172.19.0.44

## node
NODE_IP=172.19.0.45

## supervisord
SUPERVISORD_IP=172.19.0.46


## canal
CANAL_IP=172.19.0.47

CANAL_ADMIN_IP=172.19.0.48


# 172.19.1.x
## lanmp (apache2+nginx+php-fpm)

// php5.6版本
LANMP_PHP_FPM_IP=172.19.1.11

LANMP_APACHE2_IP=172.19.1.13

LANMP_NGINX_IP=172.19.1.14

// php最新版本
LANMP_PHP_FPM_IP=172.19.1.51

LANMP_APACHE2_IP=172.19.1.53

LANMP_NGINX_IP=172.19.1.54

# 172.19.2.x
## elasticsearch
ELASTICSEARCH_IP=172.19.2.11

LOGSTASH_IP=172.19.2.12

KIBANA_IP=172.19.2.13

#DEJAVU_IP=172.19.2.14

# 172.19.3.x
## rocketmq
ROCKETMQ_BROKER_IP=172.19.3.11

ROCKETMQ_NAMESRV_IP=172.19.3.12

ROCKETMQ_DASHBOARD_IP=172.19.3.13

# 172.19.4.x
## kafka
KAFKA_IP=172.19.4.11

KAFKA_ZOOKEEPER_IP=172.19.4.12

KAFKA_EFAK_IP=172.19.4.13


# 172.19.5.x
## pulsar
PULSAR_IP=172.19.5.11

PULSAR_MANAGER_IP=172.19.5.12


# 172.19.6.x
## zookeeper 集群
ZOOKEEPER_IP_1=172.19.6.11

ZOOKEEPER_IP_2=172.19.6.12

ZOOKEEPER_IP_3=172.19.6.13


# 容器环境清单
包含以下容器环境

## 单台
- [x] redis
- [x] mysql
- [x] apache
- [x] nginx
- [x] openresty
- [x] postgres
- [x] beanstalkd
- [x] caddy
- [x] etcd
- [x] tomcat
- [x] python
- [ ] zookeeper
- [x] mongodb
- [x] memcached
- [x] golang
- [x] dtm
- [x] selenium
- [x] soketi
- [ ] ssdb
- [ ] node
- [ ] supervisord

## 集成环境
- [x] lanmp
- [x] elasticsearch
- [x] rabbitmq
- [x] rocketmq
- [ ] nacos
- [x] kafka
- [x] pulsar
- [x] canal_server+canal_admin
- [x] nsq nsqlookupd nsqadmin
- [ ] clickhouse

## 集群
