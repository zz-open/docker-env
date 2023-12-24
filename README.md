# docker-env
- [docker-compose 文档](https://docs.docker.com/compose/compose-file/)
- [清华 docker](https://mirrors.tuna.tsinghua.edu.cn/help/docker-ce/)
- [阿里 docker](https://developer.aliyun.com/mirror/docker-ce?spm=a2c6h.13651102.0.0.57e31b11IGkBRU)
- [网易 docker](https://mirrors.163.com/docker-ce)
- [火山 docker](https://developer.volcengine.com/articles/7119384305456906277)
- [清华 ubuntu](https://mirrors.tuna.tsinghua.edu.cn/help/ubuntu/)
- [清华 debian](https://mirrors.tuna.tsinghua.edu.cn/help/debian/)
- [清华 centos](https://mirrors.tuna.tsinghua.edu.cn/help/centos/)
- [清华 alpine](https://mirrors.tuna.tsinghua.edu.cn/help/alpine/)

Full development environment based on Docker.

### Makefile
所有项目使用Makefile管理常用命令，因为Makefile可以分别定义PHONY执行，SHELL相对麻烦

- 初始化docker网络
```shell
make init_network
```

- 初始化数据目录
```shell
make init_data_dir
```

### Simple (172.19.150.3)
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
| nats | 172.19.150.19 | 172.19.140.19 | latest |
| caddy | 172.19.150.20 | 172.19.140.20 | latest |\
| postgres-postgis | 172.19.150.21 | 172.19.140.21 | latest |
| beanstalkd | 172.19.150.22 | 172.19.140.22 | latest |
| beanstalkd-console | 172.19.150.23 | 172.19.140.23 | latest |



| traefik | 172.19.150.16 | 172.19.140.16 | latest |
| golang | 172.19.150.26 | 172.19.140.26 | latest |

### DevOps (172.19.150.110)
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

### ELK (172.19.150.130)
| service | backend ip | frontend ip | version | 备注 |
|---|---|---|---|---|
| elasticsearch | 172.19.150.130 | 172.19.140.130 | latest |
| logstash | 172.19.150.131 | 172.19.140.131 | latest |
| kibana | 172.19.150.132 | 172.19.140.132 | latest |
| go-stash | 172.19.150.133 | 172.19.140.133 | latest |
| filebeat | 172.19.150.134 | 172.19.140.134 | latest |

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
| zoo可视化 | 172.19.150.153 | 172.19.140.143 | | |

### REDIS SENTINEL (172.19.150.160)
| service | backend ip | frontend ip | version | 备注 |
|---|---|---|---|---|
| master | 172.19.150.160 | 172.19.140.160 | latest | |
| slave1 | 172.19.150.161 | 172.19.140.161 | latest | |
| slave2 | 172.19.150.162 | 172.19.140.162 | latest | |
| slave3 | 172.19.150.163 | 172.19.140.163 | latest | |
| sentinel1 | 172.19.150.164 | 172.19.140.164 | latest | |
| sentinel2 | 172.19.150.165 | 172.19.140.165 | latest | |
| sentinel3 | 172.19.150.166 | 172.19.140.166 | latest | |

### REDIS CLUSTER (172.19.150.170)
| service | backend ip | frontend ip | version | 备注 |
|---|---|---|---|---|
| redis1 | 172.19.150.170 | 172.19.140.170 | latest | |
| redis2 | 172.19.150.171 | 172.19.140.171 | latest | |
| redis3 | 172.19.150.172 | 172.19.140.172 | latest | |
| redis4 | 172.19.150.173 | 172.19.140.173 | latest | |
| redis5 | 172.19.150.174 | 172.19.140.174 | latest | |
| redis6 | 172.19.150.175 | 172.19.140.175 | latest | |

### MEMCACHED CLUSTER (172.19.150.180)
| service | backend ip | frontend ip | version | 备注 |
|---|---|---|---|---|
| memcached1 | 172.19.150.180 | 172.19.140.180 | latest | |
| memcached2 | 172.19.150.181 | 172.19.140.181 | latest | |
| memcached3 | 172.19.150.182 | 172.19.140.182 | latest | |
| haproxy1 | 172.19.150.183 | 172.19.140.183 | latest | |


## portainer
密码最少12个字符
```text
username: admin
password: adminadminadmin
```