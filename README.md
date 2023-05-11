# container-env
基于docker-compose构建的工作环境

```
使用docker-compose方式组织，方便构建各种工作环境，节省时间提高效率

1.单节点容器方便平时工作
2.集群方式
3.service,hostname,container推荐设置为一致名字，当有多个容器service名字一样的时候，docker-compose down的时候
会一并销毁。
4.统一加入backend网络，并设置单独内网ip方便通信
```

# 源
```text
清华源
https://mirrors.tuna.tsinghua.edu.cn/help/debian/

dockerhub
https://hub.docker.com
```

# 公共配置
TZ=Asia/Shanghai

# redis
REDIS_IP=172.19.0.11

REDIS_MOD_IP=172.19.0.12

# mysql
- MYSQL_IP=172.19.0.13
- MYSQL_8_IP=172.19.0.14

# apache
APACHE2_IP=172.19.0.15

# nginx
NGINX_IP=172.19.0.16


# openresty
OPENRESTY_IP=172.19.0.17

# postgres
POSTGRES_IP=172.19.0.18

# beanstalkd
- BEANSTALKD_IP=172.19.0.19
- BEANSTALKD_CONSOLE_IP=172.19.0.20

# caddy
CADDY_IP=172.19.0.21

# clickhouse
CLICKHOUSE_IP=172.19.0.22

# etcd
ETCD_IP=172.19.0.23

# rabbitmq
RABBITMQ_IP=172.19.0.24

# tomcat
TOMCAT_IP=172.19.0.25

# python3
PYTHON_IP=172.19.0.26

# nsq
- NSQ_IP=172.19.0.27
- NSQLOOKUPD_IP=172.19.0.28
- NSQLADMIN_IP=172.19.0.29

# zookeeper
ZOOKEEPER_IP=172.19.0.30

# mongodb
MONGO_IP=172.19.0.31

# memcached
MEMCACHED_IP=172.19.0.33

# golang
GOLANG_IP=172.19.0.34

# kafka
KAFKA_IP=172.19.0.35

# pulsar
PULSAR_IP=172.19.0.36
PULSAR_MANAGER_IP=172.19.0.37

# dtm
DTM_IP=172.19.0.38

# lanmp (apache2+nginx+php-fpm)
LANMP_PHP_FPM_56_IP=172.19.1.11

LANMP_PHP_FPM_IP=172.19.1.12

LANMP_APACHE2_IP=172.19.1.13

LANMP_NGINX_IP=172.19.1.14


# elasticsearch
ELASTICSEARCH_IP=172.19.1.15

LOGSTASH_IP=172.19.1.16

KIBANA_IP=172.19.1.17

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
- [x] clickhouse
- [x] etcd
- [x] rabbitmq
- [x] tomcat
- [x] python
- [x] nsq nsqlookupd nsqadmin
- [ ] zookeeper
- [x] mongodb
- [x] memcached
- [x] golang
- [x] kafka
- [x] dtm
- [x] elasticsearch

## 集成环境
- [x] lanmp

## 集群
