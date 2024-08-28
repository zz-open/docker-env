# docker-env
- [docker-compose 文档](https://docs.docker.com/compose/compose-file/)
- [清华 docker](https://mirrors.tuna.tsinghua.edu.cn/help/docker-ce/)
- [阿里 docker](https://developer.aliyun.com/mirror/docker-ce?spm=a2c6h.13651102.0.0.57e31b11IGkBRU)
- [网易 docker](https://mirrors.163.com/docker-ce)
- [网易 debian](https://mirrors.163.com/.help/debian.html)
- [火山 docker](https://developer.volcengine.com/articles/7119384305456906277)
- [清华 ubuntu](https://mirrors.tuna.tsinghua.edu.cn/help/ubuntu/)
- [清华 debian](https://mirrors.tuna.tsinghua.edu.cn/help/debian/)
- [清华 centos](https://mirrors.tuna.tsinghua.edu.cn/help/centos/)
- [清华 alpine](https://mirrors.tuna.tsinghua.edu.cn/help/alpine/)
- [北大 debian](https://mirrors.pku.edu.cn/Help/Debian)

Full Stack development environment based on Docker.

## 如何使用
### 初始化网络
```shell
make init_network
```
- backend: 后端服务网络
- frontend: 前端服务网络（备用网络，可忽略）

数据目录存放在： ~/.docker-env
日志目录存放在： 项目根路径/logs

### 启动服务
```shell
cd standalone

# 启动 mysql5.7
docker-compose up -d mysql57

# 启动 redis
docker-compose up -d redis

# 启动 postgres 
docker-compose up -d postgres
```

### 常用命令
项目使用Makefile管理常用命令，因为Makefile可以分别定义PHONY执行，SHELL相对比较麻烦


## 服务清单
### STANDALONE
单体服务, 172.11.4.3

| service | backend ip | frontend ip | version | 备注 |
|---|---|---|---|---|
| portainer | 172.11.4.3 | 172.10.4.3 | latest | |
| busybox | 172.11.4.4 | 172.10.4.4 | latest | |
| mysql57 | 172.11.4.5 | 172.10.4.5 | 5.7 | |
| mysql8 | 172.11.4.6 | 172.10.4.6 | 8.0~8.3 | |
| mysql | 172.11.4.46 | 172.10.4.46 | 8.4~9.0 | |
| redis | 172.11.4.7 | 172.10.4.7 | latest | |
| memcached | 172.11.4.8 | 172.10.4.8 | 1.6.23 | |
| postgres | 172.11.4.9 | 172.10.4.9 | 16.2 | |
| mongo | 172.11.4.10 | 172.10.4.10 | 7.0.5 | |
| tomcat8 | 172.11.4.11 | 172.10.4.11 | 8.5.99 | 待定 |
| postgres-postgis | 172.11.4.12 | 172.10.4.12 | latest | |
| pgadmin | 172.11.4.13 | 172.10.4.13 | latest | |
| phpmyadmin | 172.11.4.14 | 172.10.4.14 | 5.2.1 | |
| soketi | 172.11.4.15 | 172.10.4.15 | latest | 待定 |
| caddy | 172.11.4.16 | 172.10.4.16 | latest | 待定 |
| beanstalkd | 172.11.4.17 | 172.10.4.17 | latest | 待定 |
| beanstalkd-console | 172.11.4.18 | 172.10.4.18 | latest | 待定 |
| traefik | 172.11.4.19 | 172.10.4.19 | v2.5 | 待定 |
| certbot | 172.11.4.20 | 172.10.4.20 | latest | 待定 |
| mongo-webui | 172.11.4.21 | 172.10.4.21 | latest | 待定 |
| zookeeper | 172.11.4.22 | 172.10.4.22 | 3.9.1 | |
| zoonavagitor | 172.11.4.23 | 172.10.4.23 | latest | |
| rocketmq-dashboard | 172.11.4.24 | 172.10.4.24 | latest | |
| rocketmq-broker | 172.11.4.25 | 172.10.4.25 | 5.1 | |
| rocketmq-namesrv | 172.11.4.26 | 172.10.4.26 | 5.1 | |
| rabbitmq | 172.11.4.27 | 172.10.4.27 | 3.12 | |
| kafka-ui | 172.11.4.28 | 172.10.4.28 | latest | |
| kafka | 172.11.4.29 | 172.10.4.29 | 3.6 | |
| kafka-z | 172.11.4.30 | 172.10.4.30 | 3.6 | |
| etcd-ui | 172.11.4.31 | 172.10.4.31 | latest | |
| etcd | 172.11.4.32 | 172.10.4.32 | v3.5.2 | |
| nats-box | 172.11.4.33 | 172.10.4.33 | latest | |
| nats | 172.11.4.34 | 172.10.4.34 | 2.10.11 | |
| pulsar-manager | 172.11.4.35 | 172.10.4.35 | 0.4.0 |
| pulsar | 172.11.4.36 | 172.10.4.36 | latest |
| nsqadmin | 172.11.4.37 | 172.10.4.37 | latest | |
| nsqlookupd | 172.11.4.38 | 172.10.4.38 | latest | |
| nsqd | 172.11.4.39 | 172.10.4.39 | latest | |
| dtm | 172.11.4.40 | 172.10.4.40 | latest |
| nacos | 172.11.4.41 | 172.10.4.41 | v2.3.0 | |
| mssql | 172.11.4.42 | 172.10.4.42 | 2022 | |
| nginx | 172.11.4.43 | 172.10.4.43 | latest | |
| jdk17 | 172.11.4.44 | 172.10.4.44 | 17 | |
| jdk8 | 172.11.4.45 | 172.10.4.45 | 8 | |
| node | 172.11.4.47 | 172.10.4.47 | node20 | |



### CLUSTER
集群服务, 172.11.2.3

#### RABBITMQ CLUSTER (172.11.2.3) [待定]
| service | backend ip | frontend ip | version | 备注 |
|---|---|---|---|---|
| rabbitmq1 | 172.11.2.3 | 172.10.2.3 | 3.12 | |
| rabbitmq2 | 172.11.2.4 | 172.10.2.4 | 3.12 | |
| rabbitmq3 | 172.11.2.5 | 172.10.2.5 | 3.12 | |

#### KAFKA KRAFT CLUSTER (172.11.2.13) [完成]
| service | backend ip | frontend ip | version | 备注 |
|---|---|---|---|---|
| krc-kafka-ui | 172.11.2.13 | 172.10.2.210 | 3.6 | |
| krc-kafka1 | 172.11.2.13 | 172.10.2.211 | 3.6 | |
| krc-kafka2 | 172.11.2.13 | 172.10.2.212 | 3.6 | |
| krc-kafka3 | 172.11.2.13 | 172.10.2.213 | 3.6 | |
| krc-kafka4 | 172.11.2.13 | 172.10.2.214 | 3.6 | |
| krc-kafka5 | 172.11.2.13 | 172.10.2.215 | 3.6 | |
| krc-kafka6 | 172.11.2.13 | 172.10.2.216 | 3.6 | |

#### KAFKA CLUSTER (172.11.2.30) [完成]
| service | backend ip | frontend ip | version | 备注 |
|---|---|---|---|---|
| kc-kafka-ui | 172.11.2.220 | 172.10.2.220 | latest | |
| kc-zoonavagitor | 172.11.2.221 | 172.10.2.221 | | |
| kc-zoo | 172.11.2.222 | 172.10.2.222 | latest | |
| kc-kafka1 | 172.11.2.223 | 172.10.2.223 | latest | |
| kc-kafka2 | 172.11.2.224 | 172.10.2.224 | latest | |
| kc-kafka3 | 172.11.2.225 | 172.10.2.225 | latest | |
| kc-kafka4 | 172.11.2.226 | 172.10.2.226 | latest | |
| kc-kafka5 | 172.11.2.227 | 172.10.2.227 | latest | |
| kc-kafka6 | 172.11.2.228 | 172.10.2.228 | latest | |

#### ROCKETMQ CLUSTER (172.11.2.50) [待定]
| service | backend ip | frontend ip | version | 备注 |
|---|---|---|---|---|
| rocketmq-dashboard | 172.11.2.11 | 172.10.2.11 | latest | |
| rocketmq-c-namesrv1 | 172.11.2.11 | 172.10.2.3 | latest | |
| rocketmq-c-namesrv2 | 172.11.2.11 | 172.10.2.4 | latest | |
| rocketmq-c-namesrv3 | 172.11.2.11 | 172.10.2.5 | latest | |
| rocketmq-c-proxy1 | 172.11.2.11 | 172.10.3.6 | latest | |
| rocketmq-c-proxy2 | 172.11.2.11 | 172.10.3.7 | latest | |
| rocketmq-c-proxy3 | 172.11.2.11 | 172.10.3.8 | latest | |
| rocketmq-c-controller1 | 172.11.2.11 | 172.10.3.9 | latest | |
| rocketmq-c-controller2 | 172.11.2.11 | 172.10.3.10 | latest | |
| rocketmq-c-controller3 | 172.11.2.11 | 172.10.3.11 | latest | |
| rocketmq-c-broker1 | 172.11.2.11 | 172.10.3.12 | latest | |
| rocketmq-c-broker2 | 172.11.2.11 | 172.10.3.13 | latest | |
| rocketmq-c-broker3 | 172.11.3.14 | 172.10.3.14 | latest | |
| rocketmq-c-broker4 | 172.11.3.15 | 172.10.3.15 | latest | |
| rocketmq-c-broker5 | 172.11.3.16 | 172.10.3.16 | latest | |
| rocketmq-c-broker6 | 172.11.3.17 | 172.10.3.17 | latest | |

#### Pulsar Cluster (172.11.2.70) [待定]
| service | backend ip | frontend ip | version | 备注 |
|---|---|---|---|---|
| pulsar-manager | 172.11.2.82 | 172.10.2.82 | 0.4.0 |
| pulsar-zookeeper | 172.11.2.81 | 172.10.2.81 | latest |
| pulsar-init | 172.11.2.80 | 172.10.2.80 | latest |
| pulsar-bookie1 | 172.11.2.83 | 172.10.2.83 | latest |
| pulsar-bookie2 | 172.11.2.84 | 172.10.2.84 | latest |
| pulsar-bookie3 | 172.11.2.85 | 172.10.2.85 | latest |
| pulsar-broker1 | 172.11.2.86 | 172.10.2.86 | latest |
| pulsar-broker2 | 172.11.2.87 | 172.10.2.87 | latest |
| pulsar-broker3 | 172.11.2.88 | 172.10.2.88 | latest |

#### NSQ CLUSTER (172.11.2.90) [待定]
| service | backend ip | frontend ip | version | 备注 |
|---|---|---|---|---|
| nsqadmin | 172.11.2.110 | 172.10.2.110 | latest | |
| nsqlookupd1 | 172.11.2.111 | 172.10.2.111 | latest | |
| nsqlookupd2 | 172.11.2.112 | 172.10.2.112 | latest | |
| nsqlookupd3 | 172.11.2.113 | 172.10.2.113 | latest | |
| nsqd1 | 172.11.2.101 | 172.10.2.101 | latest | |
| nsqd2 | 172.11.2.101 | 172.10.2.101 | latest | |
| nsqd3 | 172.11.2.101 | 172.10.2.101 | latest | |

#### NATS CLUSTER (172.11.2.100) [待定]
| service | backend ip | frontend ip | version | 备注 |
|---|---|---|---|---|
| nats-box | 172.11.2.240 | 172.10.2.240 | latest | |
| nats1 | 172.11.2.241 | 172.10.2.241 | latest | |
| nats2 | 172.11.2.242 | 172.10.2.242 | latest | |
| nats3 | 172.11.2.243 | 172.10.2.243 | latest | |

#### ETCD CLUSTER (172.11.2.110) [完成]
| service | backend ip | frontend ip | version | 备注 |
|---|---|---|---|---|
| ec-etcd-ui | 172.11.2.170 | 172.10.2.170 | | |
| ec-etcd1 | 172.11.2.171 | 172.10.2.171 | v3.5.2 | |
| ec-etcd2 | 172.11.2.172 | 172.10.2.172 | v3.5.2 | |
| ec-etcd3 | 172.11.2.173 | 172.10.2.173 | v3.5.2 | |

#### ZOOKEEPER CLUSTER (172.11.2.120) [完成]
| service | backend ip | frontend ip | version | 备注 |
|---|---|---|---|---|
| zc-zoonavagitor | 172.11.2.190 | 172.10.2.190 | | |
| zookeeper1 | 172.11.2.191 | 172.10.2.191 | latest | |
| zookeeper2 | 172.11.2.192 | 172.10.2.192 | latest | |
| zookeeper3 | 172.11.2.193 | 172.10.2.193 | latest | |

#### DTM CLUSTER (172.11.2.130) [完成]
| service | backend ip | frontend ip | version | 备注 |
|---|---|---|---|---|
| dtm-mysql | 172.11.3.80 | 172.10.3.80 | latest |
| dtm-redis | 172.11.3.81 | 172.10.3.81 | latest |
| dtm1 | 172.11.3.82 | 172.10.3.82 | latest |
| dtm2 | 172.11.3.83 | 172.10.3.83 | latest |
| dtm3 | 172.11.3.84 | 172.10.3.84 | latest |

#### MEMCACHED CLUSTER (172.11.2.140) [待定]
| service | backend ip | frontend ip | version | 备注 |
|---|---|---|---|---|
| memcached1 | 172.11.3.180 | 172.10.3.180 | latest | |
| memcached2 | 172.11.3.181 | 172.10.3.181 | latest | |
| memcached3 | 172.11.3.182 | 172.10.3.182 | latest | |
| haproxy1 | 172.11.3.183 | 172.10.3.183 | latest | |

#### MINIO CLUSTER (172.11.2.150) [待定]
| service | backend ip | frontend ip | version | 备注 |
|---|---|---|---|---|
| nginx | 172.11.3.140 | 172.10.3.140 | latest | |
| minio1 | 172.11.3.141 | 172.10.3.141 | latest | |
| minio2 | 172.11.3.142 | 172.10.3.142 | latest | |
| minio3 | 172.11.3.143 | 172.10.3.143 | latest | |

#### REDIS MSR (172.11.2.160) [完成]
| service | backend ip | frontend ip | version | 备注 |
|---|---|---|---|---|
| redis_1 | 172.11.3.180 | 172.10.3.180 | latest | |
| redis_2 | 172.11.3.181 | 172.10.3.181 | latest | |
| redis_3 | 172.11.3.182 | 172.10.3.182 | latest | |
| redis_4 | 172.11.3.183 | 172.10.3.183 | latest | |
| sentinel1 | 172.11.3.184 | 172.10.3.184 | latest | |
| sentinel2 | 172.11.3.185 | 172.10.3.185 | latest | |
| sentinel3 | 172.11.3.186 | 172.10.3.186 | latest | |

#### REDIS CLUSTER (172.11.2.170) [完成]
| service | backend ip | frontend ip | version | 备注 |
|---|---|---|---|---|
| redis-box | 172.11.3.190 | 172.10.3.190 | latest | |
| redis1 | 172.11.3.191 | 172.10.3.191 | latest | |
| redis2 | 172.11.3.192 | 172.10.3.192 | latest | |
| redis3 | 172.11.3.193 | 172.10.3.193 | latest | |
| redis4 | 172.11.3.194 | 172.10.3.194 | latest | |
| redis5 | 172.11.3.195 | 172.10.3.195 | latest | |
| redis6 | 172.11.3.196 | 172.10.3.196 | latest | |
| redis7 | 172.11.3.197 | 172.10.3.197 | latest | |
| redis8 | 172.11.3.198 | 172.10.3.198 | latest | |
| redis9 | 172.11.3.199 | 172.10.3.199 | latest | |

#### NACOS CLUSTER (172.11.2.190) [待定]
| service | backend ip | frontend ip | version | 备注 |
|---|---|---|---|---|
| nacos1 | 172.11.3.211 | 172.10.3.211 | latest | |
| nacos2 | 172.11.3.211 | 172.10.3.211 | latest | |
| nacos3 | 172.11.3.211 | 172.10.3.211 | latest | |

#### ELASTIC CLUSTER (172.11.2.200) [待定]
| service | backend ip | frontend ip | version | 备注 |
|---|---|---|---|---|
| es-setup | 172.11.2.200 | 172.10.2.200 | latest |
| kibana | 172.11.2.201 | 172.10.2.201 | latest |
| es01 | 172.11.2.202 | 172.10.2.202 | latest |
| es02 | 172.11.2.203 | 172.10.2.203 | latest |
| es03 | 172.11.2.204 | 172.10.2.204 | latest |

#### MYSQL NDB CLUSTER (172.11.2.210) [完成]
| service | backend ip | frontend ip | version | 备注 |
|---|---|---|---|---|
| mc-pma | 172.11.2.210 | 172.10.2.210 | latest |
| mc-data1 | 172.11.2.211 | 172.10.2.211 | latest |
| mc-data2 | 172.11.2.212 | 172.10.2.212 | latest |
| mc-data3 | 172.11.2.213 | 172.10.2.213 | latest |
| mc-data4 | 172.11.2.214 | 172.10.2.214 | latest |
| mc-sql1 | 172.11.2.215 | 172.10.2.215 | latest |
| mc-sql2 | 172.11.2.216 | 172.10.2.216 | latest |
| mc-management | 172.11.2.217 | 172.10.2.217 | latest |

### STACK
全栈

#### DEVOPS (172.11.3.3) [完成]
| service | backend ip | frontend ip | version | 备注 |
|---|---|---|---|---|
| gitlab | 172.11.3.3 | 172.10.3.3 | latest | |
| gitlab-runner | 172.11.3.4 | 172.10.3.4 | latest | |
| jenkins | 172.11.3.5 | 172.10.3.5 | latest | |
| devops-postgres | 172.11.3.6 | 172.10.3.6 | latest | |
| devops-redis | 172.11.3.7 | 172.10.3.7 | latest | |
| application | 172.11.3.8 | 172.10.3.8 | latest | |
| promethus | 172.11.3.6 | 172.10.3.6 | latest | |
| grafana | 172.11.3.7 | 172.10.3.7 | latest | |

#### Spider (172.11.3.50) [完成]
| service | backend ip | frontend ip | version | 备注 |
|---|---|---|---|---|
| mysql | 172.11.3.50 | 172.10.3.50 | latest |
| redis | 172.11.3.51 | 172.10.3.51 | latest |
| mongo | 172.11.3.52 | 172.10.3.52 | latest |

#### ELK (172.11.3.60) [待定]
| service | backend ip | frontend ip | version | 备注 |
|---|---|---|---|---|
| es-init | 172.11.3.60 | 172.10.3.60 | latest |
| es | 172.11.3.61 | 172.10.3.61 | latest |
| kibana | 172.11.3.62 | 172.10.3.62 | latest |
| logstash | 172.11.3.63 | 172.10.3.63 | latest |
| elk-box | 172.11.3.64 | 172.10.3.64 | latest |
| filebeat | 172.11.3.65 | 172.10.3.65 | latest |
| go-stash | 172.11.3.66 | 172.10.3.66 | latest |

#### TRAEFIK (172.11.3.70) [待定]
| service | backend ip | frontend ip | version | 备注 |
|---|---|---|---|---|
| traefik | 172.11.3.70 | 172.10.3.70 | latest |
| app1 | 172.11.3.71 | 172.10.3.71 | latest |
| app2 | 172.11.3.72 | 172.10.3.72 | latest |
| app3 | 172.11.3.73 | 172.10.3.73 | latest |

#### LNMP (172.11.3.80) [完成]
| service | backend ip | frontend ip | version | 备注 |
|---|---|---|---|---|
| nginx | 172.11.3.80 | 172.10.3.80 | latest |
| php-fpm | 172.11.3.81 | 172.10.3.81 | latest |

#### LAMP (172.11.3.90) [完成]
| service | backend ip | frontend ip | version | 备注 |
|---|---|---|---|---|
| apache | 172.11.3.90 | 172.10.2.90 | latest |
| php-fpm | 172.11.3.91 | 172.10.2.91 | latest |