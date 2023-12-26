# Redis Cluster
[DockerHub](https://hub.docker.com/r/bitnami/redis-cluster)
[Dockerfile github](https://github.com/bitnami/containers/blob/main/bitnami/redis-cluster/README.md)
redis cluster方式搭建集群

## 特点
- 三主六从

# 问题
## 如何支持外网访问
```text
从Redis 4.0[4]开始,加入的对NAT和Docker的支持。
在redis.conf文件中，通过配置 cluster-announce-ip、cluster-announce-port和 cluster-announce-bus-port这三个属性来公布可以外部访问的IP(例如主机IP或公网IP)和端口。
这种方式类似于kafka中的 advertised.listeners。
这样子，redis返回给客户端的IP地址就是 cluster-announce-ip ，而不再是自动探测到的容器内部IP。

########################## CLUSTER DOCKER/NAT support  ########################

# In certain deployments, Redis Cluster nodes address discovery fails, because
# addresses are NAT-ted or because ports are forwarded (the typical case is
# Docker and other containers).
#
# In order to make Redis Cluster working in such environments, a static
# configuration where each node knows its public address is needed. The
# following four options are used for this scope, and are:
#
# * cluster-announce-ip
# * cluster-announce-port
# * cluster-announce-tls-port
# * cluster-announce-bus-port
#
# Each instructs the node about its address, client ports (for connections
# without and with TLS) and cluster message bus port. The information is then
# published in the header of the bus packets so that other nodes will be able to
# correctly map the address of the node publishing the information.
#
# If cluster-tls is set to yes and cluster-announce-tls-port is omitted or set
# to zero, then cluster-announce-port refers to the TLS port. Note also that
# cluster-announce-tls-port has no effect if cluster-tls is set to no.
#
# If the above options are not used, the normal Redis Cluster auto-detection
# will be used instead.
#
# Note that when remapped, the bus port may not be at the fixed offset of
# clients port + 10000, so you can specify any port and bus-port depending
# on how they get remapped. If the bus-port is not set, a fixed offset of
# 10000 will be used as usual.
#
# Example:
#
# cluster-announce-ip 10.1.1.5
# cluster-announce-tls-port 6379
# cluster-announce-port 0
# cluster-announce-bus-port 6380

注意：

REDIS_CLUSTER_ANNOUNCE_IP不能使用 127.0.0.1和 localhost
REDIS_CLUSTER_DYNAMIC_IPS必须设置为 no[5],否则 REDIS_CLUSTER_ANNOUNCE_IP不会生效

```
# 命令
- 连接集群的命令
```text
redis-cli -c -h 127.0.0.1 -p 7006 -a 123456
redis-cli -c -h 127.0.0.1 -p 7002 -a 123456
redis-cli -a 123456 --cluster check 127.0.0.1:7002
redis-cli -a 123456 --cluster fix 127.0.0.1:7002

本地：
redis-cli -c -h 127.0.0.1 -p 6379 -a 123456
redis-cli -c -h 127.0.0.1 -p 16302 -a 123456
redis-cli -c -h 127.0.0.1 -p 16303 -a 123456
redis-cli -c -h 127.0.0.1 -p 16304 -a 123456
redis-cli -c -h 127.0.0.1 -p 16305 -a 123456
redis-cli -c -h 127.0.0.1 -p 16306 -a 123456


info 
cluster info
都可以查看redis cluster信息


2.查看结点信息
redis-cli -c -a 123456 -h 127.0.0.1 -p 16301 cluster nodes |sort -k 3
redis-cli -c -a 123456 -h 127.0.0.1 -p 16301 cluster info

```