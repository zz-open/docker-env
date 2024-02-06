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
### SIMPLE (172.19.150.3)
| service | backend ip | frontend ip | version | 备注 |
|---|---|---|---|---|
| busybox | 172.19.150.3 | 172.19.140.3 | latest | |
| portainer | 172.19.150.4 | 172.19.140.4 | latest | |
| mysql57 | 172.19.150.5 | 172.19.140.5 | 5.7 | |
| mysql | 172.19.150.6 | 172.19.140.6 | 8.0 | |
| redis | 172.19.150.7 | 172.19.140.7 | 7.2 | |
| redis-stack | 172.19.150.8 | 172.19.140.8 | 7.2 | |
| memcached | 172.19.150.9 | 172.19.140.9 | latest | |
| docker-in-docker | 172.19.150.10 | 172.19.140.10 | latest |
| postgres | 172.19.150.11 | 172.19.140.11 | latest |
| pgadmin | 172.19.150.12 | 172.19.140.12 | latest |
| certbot | 172.19.150.13 | 172.19.140.13 | latest |
| phpmyadmin | 172.19.150.14 | 172.19.140.14 | latest |
| tomcat8 | 172.19.150.15 | 172.19.140.15 | 8.5.97 |
| mongo | 172.19.150.16 | 172.19.140.16 | latest |
| rabbitmq | 172.19.150.17 | 172.19.140.17 | latest |
| soketi | 172.19.150.18 | 172.19.140.18 | latest |
| caddy | 172.19.150.20 | 172.19.140.20 | latest |\
| postgres-postgis | 172.19.150.21 | 172.19.140.21 | latest |
| beanstalkd | 172.19.150.22 | 172.19.140.22 | latest |
| beanstalkd-console | 172.19.150.23 | 172.19.140.23 | latest |

### Spider (172.19.150.80)
| service | backend ip | frontend ip | version | 备注 |
|---|---|---|---|---|
| mysql | 172.19.150.80 | 172.19.140.80 | latest |
| redis | 172.19.150.81 | 172.19.140.81 | latest |

### DTM (172.19.150.90)
| service | backend ip | frontend ip | version | 备注 |
|---|---|---|---|---|
| dtm1 | 172.19.150.90 | 172.19.140.90 | latest |
| dtm2 | 172.19.150.91 | 172.19.140.91 | latest |
| dtm3 | 172.19.150.92 | 172.19.140.92 | latest |
| mysql | 172.19.150.96 | 172.19.140.96 | latest |
| redis | 172.19.150.97 | 172.19.140.97 | latest |

### ELK (172.19.150.100)
| service | backend ip | frontend ip | version | 备注 |
|---|---|---|---|---|
| es-init | 172.19.150.100 | 172.19.140.100 | latest |
| es | 172.19.150.101 | 172.19.140.101 | latest |
| kibana | 172.19.150.102 | 172.19.140.102 | latest |
| logstash | 172.19.150.103 | 172.19.140.103 | latest |
| elk-box | 172.19.150.104 | 172.19.140.104 | latest |
| filebeat | 172.19.150.105 | 172.19.140.105 | latest |
| go-stash | 172.19.150.106 | 172.19.140.106 | latest |

### DEVOPS (172.19.150.110)
| service | backend ip | frontend ip | version | 备注 |
|---|---|---|---|---|
| gitlab | 172.19.150.110 | 172.19.140.110 | latest | |
| gitlab-runner | 172.19.150.111 | 172.19.140.111 | latest | |
| jenkins | 172.19.150.112 | 172.19.140.112 | latest | |
| promethus | 172.19.150.113 | 172.19.140.113 | latest | |
| grafana | 172.19.150.114 | 172.19.140.114 | latest | |
| application | 172.19.150.115 | 172.19.140.115 | latest | |

### LNMP (172.19.150.120)
| service | backend ip | frontend ip | version | 备注 |
|---|---|---|---|---|
| nginx | 172.19.150.120 | 172.19.140.120 | latest |
| php-fpm | 172.19.150.121 | 172.19.140.121 | latest |

### LAMP (172.19.150.120)
| service | backend ip | frontend ip | version | 备注 |
|---|---|---|---|---|
| apache | 172.19.150.122 | 172.19.140.122 | latest |
| php-fpm | 172.19.150.123 | 172.19.140.123 | latest |

### ELASTIC STACK (172.19.150.130)
| service | backend ip | frontend ip | version | 备注 |
|---|---|---|---|---|
| es-setup | 172.19.150.130 | 172.19.140.130 | latest |
| es01 | 172.19.150.131 | 172.19.140.131 | latest |
| es02 | 172.19.150.132 | 172.19.140.132 | latest |
| es03 | 172.19.150.133 | 172.19.140.133 | latest |
| kibana | 172.19.150.134 | 172.19.140.134 | latest |

### ETCD CLUSTER (172.19.150.140)
| service | backend ip | frontend ip | version | 备注 |
|---|---|---|---|---|
| etcd1 | 172.19.150.140 | 172.19.140.140 | v3.5.2 | |
| etcd2 | 172.19.150.141 | 172.19.140.141 | v3.5.2 | |
| etcd3 | 172.19.150.142 | 172.19.140.142 | v3.5.2 | |
| etcd可视化 | 172.19.150.143 | 172.19.140.143 | | |

### ZOOKEEPER CLUSTER (172.19.150.150)
| service | backend ip | frontend ip | version | 备注 |
|---|---|---|---|---|
| zoo1 | 172.19.150.150 | 172.19.140.150 | latest | |
| zoo2 | 172.19.150.151 | 172.19.140.151 | latest | |
| zoo3 | 172.19.150.152 | 172.19.140.152 | latest | |
| zoonavagitor | 172.19.150.153 | 172.19.140.143 | | |

### REDIS MSR (172.19.150.160)
| service | backend ip | frontend ip | version | 备注 |
|---|---|---|---|---|
| redis_1 | 172.19.150.161 | 172.19.140.161 | latest | |
| redis_2 | 172.19.150.162 | 172.19.140.162 | latest | |
| redis_3 | 172.19.150.163 | 172.19.140.163 | latest | |
| redis_4 | 172.19.150.164 | 172.19.140.164 | latest | |
| sentinel1 | 172.19.150.166 | 172.19.140.165 | latest | |
| sentinel2 | 172.19.150.167 | 172.19.140.166 | latest | |
| sentinel3 | 172.19.150.168 | 172.19.140.167 | latest | |

### REDIS CLUSTER (172.19.150.170)
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

### MEMCACHED CLUSTER (172.19.150.180)
| service | backend ip | frontend ip | version | 备注 |
|---|---|---|---|---|
| memcached1 | 172.19.150.180 | 172.19.140.180 | latest | |
| memcached2 | 172.19.150.181 | 172.19.140.181 | latest | |
| memcached3 | 172.19.150.182 | 172.19.140.182 | latest | |
| haproxy1 | 172.19.150.183 | 172.19.140.183 | latest | |

### MINIO CLUSTER (172.19.150.190)
| service | backend ip | frontend ip | version | 备注 |
|---|---|---|---|---|
| minio1 | 172.19.150.190 | 172.19.140.190 | latest | |
| minio2 | 172.19.150.191 | 172.19.140.191 | latest | |
| minio3 | 172.19.150.192 | 172.19.140.192 | latest | |
| nginx | 172.19.150.193 | 172.19.140.193 | latest | |

### NSQ CLUSTER (172.19.150.200)
| service | backend ip | frontend ip | version | 备注 |
|---|---|---|---|---|
| nsqlookupd1 | 172.19.150.200 | 172.19.140.200 | latest | |
| nsqlookupd2 | 172.19.150.201 | 172.19.140.201 | latest | |
| nsqd1 | 172.19.150.202 | 172.19.140.202 | latest | |
| nsqd2 | 172.19.150.203 | 172.19.140.203 | latest | |
| nsqd3 | 172.19.150.204 | 172.19.140.204 | latest | |
| nsqadmin | 172.19.150.205 | 172.19.140.205 | latest | |

### RABBITMQ CLUSTER (172.19.150.210)
| service | backend ip | frontend ip | version | 备注 |
|---|---|---|---|---|
| rabbitmq1 | 172.19.150.210 | 172.19.140.210 | latest | |
| rabbitmq2 | 172.19.150.211 | 172.19.140.211 | latest | |
| rabbitmq3 | 172.19.150.212 | 172.19.140.212 | latest | |

### ROCKETMQ CLUSTER (172.19.150.220)
| service | backend ip | frontend ip | version | 备注 |
|---|---|---|---|---|
| rocketmq1 | 172.19.150.220 | 172.19.140.220 | latest | |
| rocketmq2 | 172.19.150.220 | 172.19.140.220 | latest | |
| rocketmq3 | 172.19.150.220 | 172.19.140.220 | latest | |

### NATS CLUSTER (172.19.150.230)
| service | backend ip | frontend ip | version | 备注 |
|---|---|---|---|---|
| nats1 | 172.19.150.230 | 172.19.140.230 | latest | |
| nats2 | 172.19.150.231 | 172.19.140.231 | latest | |
| nats3 | 172.19.150.232 | 172.19.140.232 | latest | |
| nats-box | 172.19.150.233 | 172.19.140.233 | latest | |

### TRAEFIK (172.19.150.240)
| service | backend ip | frontend ip | version | 备注 |
|---|---|---|---|---|
| traefik | 172.19.150.240 | 172.19.140.240 | latest |
| app1 | 172.19.150.241 | 172.19.140.241 | latest |
| app2 | 172.19.150.242 | 172.19.140.242 | latest |
| app3 | 172.19.150.243 | 172.19.140.243 | latest |


## portainer
密码最少12个字符
```text
username: admin
password: adminadminadmin
```