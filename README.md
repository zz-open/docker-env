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

### SIMPLE (172.11.4.3) [完成]
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

### ROCKETMQ LOCAL (172.11.2.3) [完成]
| service | backend ip | frontend ip | version | 备注 |
|---|---|---|---|---|
| rocketmq-namesrv | 172.11.2.3 | 172.10.2.3 | latest | |
| rocketmq-broker | 172.11.2.4 | 172.10.2.4 | latest | |
| rocketmq-dashboard | 172.11.2.5 | 172.10.2.5 | latest | |

### ROCKETMQ CLUSTER (172.11.2.11) [完成]
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

### RABBITMQ LOCAL (172.11.2.30) [完成]
| service | backend ip | frontend ip | version | 备注 |
|---|---|---|---|---|
| rabbitmq | 172.11.2.30 | 172.10.2.30 | latest | |

### RABBITMQ CLUSTER (172.11.2.40) [完成]
| service | backend ip | frontend ip | version | 备注 |
|---|---|---|---|---|
| rabbitmq1 | 172.11.2.40 | 172.10.2.40 | latest | |
| rabbitmq2 | 172.11.2.41 | 172.10.2.41 | latest | |
| rabbitmq3 | 172.11.2.42 | 172.10.2.42 | latest | |

### Pulsar Local (172.11.2.60) [完成]
| service | backend ip | frontend ip | version | 备注 |
|---|---|---|---|---|
| pulsar-manager | 172.11.2.60 | 172.10.2.60 | latest |
| pulsar | 172.11.2.61 | 172.10.2.61 | latest |

### Pulsar Cluster (172.11.2.80) [完成]
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

### NSQ LOCAL (172.11.2.100) [完成]
| service | backend ip | frontend ip | version | 备注 |
|---|---|---|---|---|
| nsqadmin | 172.11.2.102 | 172.10.2.102 | latest | |
| nsqlookupd | 172.11.2.100 | 172.10.2.100 | latest | |
| nsqd | 172.11.2.101 | 172.10.2.101 | latest | |

### NSQ CLUSTER (172.11.2.110) [完成]
| service | backend ip | frontend ip | version | 备注 |
|---|---|---|---|---|
| nsqadmin | 172.11.2.110 | 172.10.2.110 | latest | |
| nsqlookupd1 | 172.11.2.111 | 172.10.2.111 | latest | |
| nsqlookupd2 | 172.11.2.112 | 172.10.2.112 | latest | |
| nsqlookupd3 | 172.11.2.113 | 172.10.2.113 | latest | |
| nsqd1 | 172.11.2.101 | 172.10.2.101 | latest | |
| nsqd2 | 172.11.2.101 | 172.10.2.101 | latest | |
| nsqd3 | 172.11.2.101 | 172.10.2.101 | latest | |

### NATS LOCAL (172.11.2.130) [完成]
| service | backend ip | frontend ip | version | 备注 |
|---|---|---|---|---|
| nats-box | 172.11.2.130 | 172.10.2.130 | latest | |
| nats | 172.11.2.131 | 172.10.2.131 | latest | |

### NATS CLUSTER (172.11.2.140) [完成]
| service | backend ip | frontend ip | version | 备注 |
|---|---|---|---|---|
| nats-box | 172.19.150.240 | 172.19.140.240 | latest | |
| nats1 | 172.19.150.241 | 172.19.140.241 | latest | |
| nats2 | 172.19.150.242 | 172.19.140.242 | latest | |
| nats3 | 172.19.150.243 | 172.19.140.243 | latest | |

### ETCD LOCAL (172.11.2.160) [完成]
| service | backend ip | frontend ip | version | 备注 |
|---|---|---|---|---|
| etcd可视化 | 172.11.150.143 | 172.11.140.143 | | |
| etcd | 172.11.150.140 | 172.11.140.140 | v3.5.2 | |

### ETCD CLUSTER (172.11.2.170) [完成]
| service | backend ip | frontend ip | version | 备注 |
|---|---|---|---|---|
| etcd可视化 | 172.11.150.143 | 172.11.140.143 | | |
| etcd1 | 172.11.150.140 | 172.11.140.140 | v3.5.2 | |
| etcd2 | 172.11.150.141 | 172.11.140.141 | v3.5.2 | |
| etcd3 | 172.11.150.142 | 172.11.140.142 | v3.5.2 | |

### ZOOKEEPER LOCAL (172.11.2.180) [完成]
| service | backend ip | frontend ip | version | 备注 |
|---|---|---|---|---|
| zoonavagitor | 172.11.2.180 | 172.11.2.180 | | |
| zookeeper | 172.11.2.181 | 172.11.2.181 | latest | |

### ZOOKEEPER CLUSTER (172.11.2.190) [完成]
| service | backend ip | frontend ip | version | 备注 |
|---|---|---|---|---|
| zc-zoonavagitor | 172.11.2.190 | 172.10.2.190 | | |
| zc-zoo1 | 172.11.2.191 | 172.10.2.191 | latest | |
| zc-zoo2 | 172.11.2.192 | 172.10.2.192 | latest | |
| zc-zoo3 | 172.11.2.193 | 172.10.2.193 | latest | |

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

### KAFKA CLUSTER (172.11.2.220) [完成]
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

### DEVOPS (172.11.3.3) [完成]
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

### Spider (172.11.3.60) [完成]
| service | backend ip | frontend ip | version | 备注 |
|---|---|---|---|---|
| mysql | 172.11.3.60 | 172.10.3.60 | latest |
| redis | 172.11.3.61 | 172.10.3.61 | latest |
| mongo | 172.11.3.62 | 172.10.3.62 | latest |

### DTM LOCAL (172.11.3.70) [完成]
| service | backend ip | frontend ip | version | 备注 |
|---|---|---|---|---|
| dl-mysql | 172.11.3.70 | 172.10.3.70 | latest |
| dl-redis | 172.11.3.71 | 172.10.3.71 | latest |
| dl-dtm | 172.11.3.72 | 172.10.3.72 | latest |

### DTM CLUSTER (172.11.3.80) [完成]
| service | backend ip | frontend ip | version | 备注 |
|---|---|---|---|---|
| dc-mysql | 172.11.3.80 | 172.10.3.80 | latest |
| dc-redis | 172.11.3.81 | 172.10.3.81 | latest |
| dc-dtm1 | 172.11.3.82 | 172.10.3.82 | latest |
| dc-dtm2 | 172.11.3.83 | 172.10.3.83 | latest |
| dc-dtm3 | 172.11.3.84 | 172.10.3.84 | latest |

### ELK (172.11.3.90) [待定]
| service | backend ip | frontend ip | version | 备注 |
|---|---|---|---|---|
| es-init | 172.11.3.100 | 172.10.3.100 | latest |
| es | 172.11.3.101 | 172.10.3.101 | latest |
| kibana | 172.11.3.102 | 172.10.3.102 | latest |
| logstash | 172.11.3.103 | 172.10.3.103 | latest |
| elk-box | 172.11.3.104 | 172.10.3.104 | latest |
| filebeat | 172.11.3.105 | 172.10.3.105 | latest |
| go-stash | 172.11.3.106 | 172.10.3.106 | latest |

### ELASTIC STACK (172.11.3.110) [待定]
| service | backend ip | frontend ip | version | 备注 |
|---|---|---|---|---|
| es-setup | 172.11.3.130 | 172.10.3.130 | latest |
| es01 | 172.11.3.131 | 172.10.3.131 | latest |
| es02 | 172.11.3.132 | 172.10.3.132 | latest |
| es03 | 172.11.3.133 | 172.10.3.133 | latest |
| kibana | 172.11.3.134 | 172.10.3.134 | latest |

### MEMCACHED CLUSTER (172.11.3.130) [待定]
| service | backend ip | frontend ip | version | 备注 |
|---|---|---|---|---|
| memcached1 | 172.11.3.180 | 172.10.3.180 | latest | |
| memcached2 | 172.11.3.181 | 172.10.3.181 | latest | |
| memcached3 | 172.11.3.182 | 172.10.3.182 | latest | |
| haproxy1 | 172.11.3.183 | 172.10.3.183 | latest | |

### MINIO CLUSTER (172.11.3.140) [待定]
| service | backend ip | frontend ip | version | 备注 |
|---|---|---|---|---|
| nginx | 172.11.3.140 | 172.10.3.140 | latest | |
| minio1 | 172.11.3.141 | 172.10.3.141 | latest | |
| minio2 | 172.11.3.142 | 172.10.3.142 | latest | |
| minio3 | 172.11.3.143 | 172.10.3.143 | latest | |

### TRAEFIK (172.11.3.150) [待定]
| service | backend ip | frontend ip | version | 备注 |
|---|---|---|---|---|
| traefik | 172.11.3.250 | 172.10.3.250 | latest |
| app1 | 172.11.3.251 | 172.10.3.251 | latest |
| app2 | 172.11.3.252 | 172.10.3.252 | latest |
| app3 | 172.11.3.253 | 172.10.3.253 | latest |

### LNMP (172.11.3.160) [完成]
| service | backend ip | frontend ip | version | 备注 |
|---|---|---|---|---|
| nginx | 172.11.3.160 | 172.10.3.160 | latest |
| php-fpm | 172.11.3.161 | 172.10.3.161 | latest |

### LAMP (172.11.3.170) [完成]
| service | backend ip | frontend ip | version | 备注 |
|---|---|---|---|---|
| apache | 172.11.3.170 | 172.10.2.170 | latest |
| php-fpm | 172.11.3.171 | 172.10.2.171 | latest |

### REDIS MSR (172.11.3.180) [完成]
| service | backend ip | frontend ip | version | 备注 |
|---|---|---|---|---|
| redis_1 | 172.11.3.180 | 172.10.3.180 | latest | |
| redis_2 | 172.11.3.181 | 172.10.3.181 | latest | |
| redis_3 | 172.11.3.182 | 172.10.3.182 | latest | |
| redis_4 | 172.11.3.183 | 172.10.3.183 | latest | |
| sentinel1 | 172.11.3.184 | 172.10.3.184 | latest | |
| sentinel2 | 172.11.3.185 | 172.10.3.185 | latest | |
| sentinel3 | 172.11.3.186 | 172.10.3.186 | latest | |

### REDIS CLUSTER (172.11.3.190) [完成]
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

### portainer
密码最少12个字符
```text
username: admin
password: adminadminadmin
```