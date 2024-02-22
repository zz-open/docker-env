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

Full development environment based on Docker.

### Makefile
所有项目使用Makefile管理常用命令，因为Makefile可以分别定义PHONY执行，SHELL相对麻烦

- 初始化docker网络
```shell
make init_network
```

- backend: 后端服务网络
- frontend: 前端服务网络（暂时无用）

- 初始化数据目录
```shell
make init_data_dir
```
## 服务清单

### SIMPLE (172.11.4.3)
| service | backend ip | frontend ip | version | 备注 |
|---|---|---|---|---|
| busybox | 172.11.4.3 | 172.10.4.3 | latest | |
| portainer | 172.11.4.4 | 172.10.4.4 | latest | |
| mysql57 | 172.11.4.5 | 172.10.4.5 | 5.7 | |
| mysql | 172.11.4.6 | 172.10.4.6 | 8.0 | |
| redis | 172.11.4.7 | 172.10.4.7 | 7.2 | |
| redis-stack | 172.11.4.8 | 172.10.4.8 | 7.2 | |
| memcached | 172.11.4.9 | 172.10.4.9 | latest | |
| docker-in-docker | 172.11.4.10 | 172.10.4.10 | latest |
| postgres | 172.11.4.11 | 172.10.4.11 | latest |
| pgadmin | 172.11.4.12 | 172.10.4.12 | latest |
| certbot | 172.11.4.13 | 172.10.4.13 | latest |
| phpmyadmin | 172.11.4.14 | 172.10.4.14 | latest |
| tomcat8 | 172.11.4.15 | 172.10.4.15 | 8.5.97 |
| mongo | 172.11.4.16 | 172.10.4.16 | latest |
| rabbitmq | 172.11.4.17 | 172.10.4.17 | latest |
| soketi | 172.11.4.18 | 172.10.4.18 | latest |
| caddy | 172.11.4.20 | 172.10.4.20 | latest |
| postgres-postgis | 172.11.4.21 | 172.10.4.21 | latest |
| beanstalkd | 172.11.4.22 | 172.10.4.22 | latest |
| beanstalkd-console | 172.11.4.23 | 172.10.4.23 | latest |

### ROCKETMQ LOCAL (172.11.2.3)
| service | backend ip | frontend ip | version | 备注 |
|---|---|---|---|---|
| rocketmq-namesrv | 172.11.2.3 | 172.10.2.3 | latest | |
| rocketmq-broker | 172.11.2.4 | 172.10.2.4 | latest | |
| rocketmq-dashboard | 172.11.2.5 | 172.10.2.5 | latest | |

### ROCKETMQ CLUSTER (172.11.2.11)
| service | backend ip | frontend ip | version | 备注 |
|---|---|---|---|---|
| rocketmq-namesrv1 | 172.11.2.11 | 172.10.2.3 | latest | |
| rocketmq-namesrv2 | 172.11.2.11 | 172.10.2.4 | latest | |
| rocketmq-namesrv3 | 172.11.2.11 | 172.10.2.5 | latest | |
| rocketmq-proxy1 | 172.11.2.11 | 172.10.3.6 | latest | |
| rocketmq-proxy2 | 172.11.2.11 | 172.10.3.7 | latest | |
| rocketmq-proxy3 | 172.11.2.11 | 172.10.3.8 | latest | |
| rocketmq-controller1 | 172.11.2.11 | 172.10.3.9 | latest | |
| rocketmq-controller2 | 172.11.2.11 | 172.10.3.10 | latest | |
| rocketmq-controller3 | 172.11.2.11 | 172.10.3.11 | latest | |
| rocketmq-broker1 | 172.11.2.11 | 172.10.3.12 | latest | |
| rocketmq-broker2 | 172.11.2.11 | 172.10.3.13 | latest | |
| rocketmq-broker3 | 172.11.3.14 | 172.10.3.14 | latest | |
| rocketmq-broker4 | 172.11.3.15 | 172.10.3.15 | latest | |
| rocketmq-broker5 | 172.11.3.16 | 172.10.3.16 | latest | |
| rocketmq-broker6 | 172.11.3.17 | 172.10.3.17 | latest | |
| rocketmq-dashboard | 172.11.3.18 | 172.10.3.18 | latest | |

### RABBITMQ LOCAL (172.11.2.30)
| service | backend ip | frontend ip | version | 备注 |
|---|---|---|---|---|
| rabbitmq | 172.11.2.30 | 172.10.2.30 | latest | |

### RABBITMQ CLUSTER (172.11.2.40)
| service | backend ip | frontend ip | version | 备注 |
|---|---|---|---|---|
| rabbitmq1 | 172.11.2.40 | 172.10.2.40 | latest | |
| rabbitmq2 | 172.11.2.41 | 172.10.2.41 | latest | |
| rabbitmq3 | 172.11.2.42 | 172.10.2.42 | latest | |

### Pulsar Local (172.11.2.60)
| service | backend ip | frontend ip | version | 备注 |
|---|---|---|---|---|
| pulsar-manager | 172.11.2.60 | 172.10.2.60 | latest |
| pulsar | 172.11.2.61 | 172.10.2.61 | latest |

### Pulsar Cluster (172.11.2.80)
| service | backend ip | frontend ip | version | 备注 |
|---|---|---|---|---|
| pulsar-manager | 172.11.2.82 | 172.10.2.82 | latest |
| pulsar-zookeeper | 172.11.2.81 | 172.10.2.81 | latest |
| pulsar-init | 172.11.2.80 | 172.10.2.80 | latest |
| pulsar-bookie1 | 172.11.2.83 | 172.10.2.83 | latest |
| pulsar-bookie2 | 172.11.2.84 | 172.10.2.84 | latest |
| pulsar-bookie3 | 172.11.2.85 | 172.10.2.85 | latest |
| pulsar-broker1 | 172.11.2.86 | 172.10.2.86 | latest |
| pulsar-broker2 | 172.11.2.87 | 172.10.2.87 | latest |
| pulsar-broker3 | 172.11.2.88 | 172.10.2.88 | latest |

### NSQ LOCAL (172.11.2.100)
| service | backend ip | frontend ip | version | 备注 |
|---|---|---|---|---|
| nsqadmin | 172.11.2.102 | 172.10.2.102 | latest | |
| nsqlookupd | 172.11.2.100 | 172.10.2.100 | latest | |
| nsqd | 172.11.2.101 | 172.10.2.101 | latest | |


### NSQ CLUSTER (172.11.2.110)
| service | backend ip | frontend ip | version | 备注 |
|---|---|---|---|---|
| nsqadmin | 172.11.2.102 | 172.10.2.102 | latest | |
| nsqlookupd1 | 172.11.2.100 | 172.10.2.100 | latest | |
| nsqlookupd2 | 172.11.2.100 | 172.10.2.100 | latest | |
| nsqd1 | 172.11.2.101 | 172.10.2.101 | latest | |
| nsqd2 | 172.11.2.101 | 172.10.2.101 | latest | |
| nsqd3 | 172.11.2.101 | 172.10.2.101 | latest | |


### NATS LOCAL (172.11.2.130)
| service | backend ip | frontend ip | version | 备注 |
|---|---|---|---|---|
| nats-box | 172.11.2.130 | 172.10.2.130 | latest | |
| nats | 172.11.2.131 | 172.10.2.131 | latest | |

### NATS CLUSTER (172.11.2.140)
| service | backend ip | frontend ip | version | 备注 |
|---|---|---|---|---|
| nats-box | 172.19.150.240 | 172.19.140.240 | latest | |
| nats1 | 172.19.150.241 | 172.19.140.241 | latest | |
| nats2 | 172.19.150.242 | 172.19.140.242 | latest | |
| nats3 | 172.19.150.243 | 172.19.140.243 | latest | |


### ETCD LOCAL (172.11.2.160)
| service | backend ip | frontend ip | version | 备注 |
|---|---|---|---|---|
| etcd可视化 | 172.11.150.143 | 172.11.140.143 | | |
| etcd | 172.11.150.140 | 172.11.140.140 | v3.5.2 | |

### ETCD CLUSTER (172.11.2.170)
| service | backend ip | frontend ip | version | 备注 |
|---|---|---|---|---|
| etcd可视化 | 172.11.150.143 | 172.11.140.143 | | |
| etcd1 | 172.11.150.140 | 172.11.140.140 | v3.5.2 | |
| etcd2 | 172.11.150.141 | 172.11.140.141 | v3.5.2 | |
| etcd3 | 172.11.150.142 | 172.11.140.142 | v3.5.2 | |

### ZOOKEEPER LOCAL (172.11.2.180)
| service | backend ip | frontend ip | version | 备注 |
|---|---|---|---|---|
| zoonavagitor | 172.11.150.153 | 172.11.140.143 | | |
| zoo | 172.11.150.150 | 172.11.140.150 | latest | |

### ZOOKEEPER CLUSTER (172.11.2.190)
| service | backend ip | frontend ip | version | 备注 |
|---|---|---|---|---|
| zoonavagitor | 172.11.2.153 | 172.10.2.143 | | |
| zoo1 | 172.11.2.150 | 172.10.2.150 | latest | |
| zoo2 | 172.11.2.151 | 172.10.2.151 | latest | |
| zoo3 | 172.11.2.152 | 172.10.2.152 | latest | |

### KAFKA LOCAL (172.11.2.200) [完成]
| service | backend ip | frontend ip | version | 备注 |
|---|---|---|---|---|
| kl-kafka-ui | 172.11.2.200 | 172.10.2.200 | latest | |
| kl-zoonavagitor | 172.11.2.201 | 172.10.2.201 | | |
| kl-zoo | 172.11.2.202 | 172.10.2.202 | latest | |
| kl-kafka | 172.11.2.203 | 172.10.2.203 | latest | |

### KAFKA KRAFT LOCAL (172.11.2.205) [完成]
| service | backend ip | frontend ip | version | 备注 |
|---|---|---|---|---|
| krl-kafka-ui | 172.11.2.205 | 172.10.2.205 | latest | |
| krl-kafka | 172.11.2.206 | 172.10.2.206 | latest | |

### KAFKA KRAFT CLUSTER (172.11.2.210) [完成]
| service | backend ip | frontend ip | version | 备注 |
|---|---|---|---|---|
| krc-kafka-ui | 172.11.2.210 | 172.10.2.210 | latest | |
| krc-kafka1 | 172.11.2.211 | 172.10.2.211 | latest | |
| krc-kafka2 | 172.11.2.212 | 172.10.2.212 | latest | |
| krc-kafka3 | 172.11.2.213 | 172.10.2.213 | latest | |
| krc-kafka4 | 172.11.2.214 | 172.10.2.214 | latest | |
| krc-kafka5 | 172.11.2.215 | 172.10.2.215 | latest | |
| krc-kafka6 | 172.11.2.216 | 172.10.2.216 | latest | |

### KAFKA CLUSTER (172.11.2.220) [待定]
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

### DEVOPS (172.11.3.3)
| service | backend ip | frontend ip | version | 备注 |
|---|---|---|---|---|
| gitlab | 172.19.150.110 | 172.19.140.110 | latest | |
| gitlab-runner | 172.19.150.111 | 172.19.140.111 | latest | |
| jenkins | 172.19.150.112 | 172.19.140.112 | latest | |
| promethus | 172.19.150.113 | 172.19.140.113 | latest | |
| grafana | 172.19.150.114 | 172.19.140.114 | latest | |
| application | 172.19.150.115 | 172.19.140.115 | latest | |

### Spider (172.11.3.60)
| service | backend ip | frontend ip | version | 备注 |
|---|---|---|---|---|
| mysql | 172.19.150.80 | 172.19.140.80 | latest |
| redis | 172.19.150.81 | 172.19.140.81 | latest |
| mongo | 172.19.150.82 | 172.19.140.82 | latest |

### DTM (172.11.3.80)
| service | backend ip | frontend ip | version | 备注 |
|---|---|---|---|---|
| dtm1 | 172.19.150.90 | 172.19.140.90 | latest |
| dtm2 | 172.19.150.91 | 172.19.140.91 | latest |
| dtm3 | 172.19.150.92 | 172.19.140.92 | latest |
| mysql | 172.19.150.96 | 172.19.140.96 | latest |
| redis | 172.19.150.97 | 172.19.140.97 | latest |

### ELK (172.11.3.90)
| service | backend ip | frontend ip | version | 备注 |
|---|---|---|---|---|
| es-init | 172.19.150.100 | 172.19.140.100 | latest |
| es | 172.19.150.101 | 172.19.140.101 | latest |
| kibana | 172.19.150.102 | 172.19.140.102 | latest |
| logstash | 172.19.150.103 | 172.19.140.103 | latest |
| elk-box | 172.19.150.104 | 172.19.140.104 | latest |
| filebeat | 172.19.150.105 | 172.19.140.105 | latest |
| go-stash | 172.19.150.106 | 172.19.140.106 | latest |


### ELASTIC STACK (172.11.3.110)
| service | backend ip | frontend ip | version | 备注 |
|---|---|---|---|---|
| es-setup | 172.19.150.130 | 172.19.140.130 | latest |
| es01 | 172.19.150.131 | 172.19.140.131 | latest |
| es02 | 172.19.150.132 | 172.19.140.132 | latest |
| es03 | 172.19.150.133 | 172.19.140.133 | latest |
| kibana | 172.19.150.134 | 172.19.140.134 | latest |


### MEMCACHED CLUSTER (172.11.3.130)
| service | backend ip | frontend ip | version | 备注 |
|---|---|---|---|---|
| memcached1 | 172.19.150.180 | 172.19.140.180 | latest | |
| memcached2 | 172.19.150.181 | 172.19.140.181 | latest | |
| memcached3 | 172.19.150.182 | 172.19.140.182 | latest | |
| haproxy1 | 172.19.150.183 | 172.19.140.183 | latest | |

### MINIO CLUSTER (172.11.3.140)
| service | backend ip | frontend ip | version | 备注 |
|---|---|---|---|---|
| minio1 | 172.19.150.190 | 172.19.140.190 | latest | |
| minio2 | 172.19.150.191 | 172.19.140.191 | latest | |
| minio3 | 172.19.150.192 | 172.19.140.192 | latest | |
| nginx | 172.19.150.193 | 172.19.140.193 | latest | |

### TRAEFIK (172.11.3.150)
| service | backend ip | frontend ip | version | 备注 |
|---|---|---|---|---|
| traefik | 172.19.150.250 | 172.19.140.250 | latest |
| app1 | 172.19.150.251 | 172.19.140.251 | latest |
| app2 | 172.19.150.252 | 172.19.140.252 | latest |
| app3 | 172.19.150.253 | 172.19.140.253 | latest |

### LNMP (172.11.3.160)
| service | backend ip | frontend ip | version | 备注 |
|---|---|---|---|---|
| nginx | 172.11.2.220 | 172.10.2.220 | latest |
| php-fpm | 172.11.2.221 | 172.10.2.221 | latest |

### LAMP (172.11.3.170)
| service | backend ip | frontend ip | version | 备注 |
|---|---|---|---|---|
| apache | 172.11.2.230 | 172.10.2.230 | latest |
| php-fpm | 172.11.2.231 | 172.10.2.231 | latest |


### REDIS MSR (172.11.2.200)
| service | backend ip | frontend ip | version | 备注 |
|---|---|---|---|---|
| redis_1 | 172.19.150.161 | 172.19.140.161 | latest | |
| redis_2 | 172.19.150.162 | 172.19.140.162 | latest | |
| redis_3 | 172.19.150.163 | 172.19.140.163 | latest | |
| redis_4 | 172.19.150.164 | 172.19.140.164 | latest | |
| sentinel1 | 172.19.150.166 | 172.19.140.165 | latest | |
| sentinel2 | 172.19.150.167 | 172.19.140.166 | latest | |
| sentinel3 | 172.19.150.168 | 172.19.140.167 | latest | |

### REDIS CLUSTER (172.11.2.210)
| service | backend ip | frontend ip | version | 备注 |
|---|---|---|---|---|
| redis-box | 172.19.150.170 | 172.19.140.170 | latest | |
| redis1 | 172.19.150.171 | 172.19.140.171 | latest | |
| redis2 | 172.19.150.172 | 172.19.140.172 | latest | |
| redis3 | 172.19.150.173 | 172.19.140.173 | latest | |
| redis4 | 172.19.150.174 | 172.19.140.174 | latest | |
| redis5 | 172.19.150.175 | 172.19.140.175 | latest | |
| redis6 | 172.19.150.176 | 172.19.140.176 | latest | |
| redis7 | 172.19.150.177 | 172.19.140.177 | latest | |
| redis8 | 172.19.150.178 | 172.19.140.178 | latest | |
| redis9 | 172.19.150.179 | 172.19.140.179 | latest | |


## portainer
密码最少12个字符
```text
username: admin
password: adminadminadmin
```