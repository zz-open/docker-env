# docker-env
- [docker-compose 文档](https://docs.docker.com/compose/compose-file/)
- [清华 docker](https://mirrors.tuna.tsinghua.edu.cn/help/docker-ce/)
- [阿里 docker](https://developer.aliyun.com/mirror/docker-ce?spm=a2c6h.13651102.0.0.57e31b11IGkBRU)
- [网易 docker](https://mirrors.163.com/docker-ce)
- [火山 docker](https://developer.volcengine.com/articles/7119384305456906277)
- [清华 ubuntu](https://mirrors.tuna.tsinghua.edu.cn/help/ubuntu/)
- [清华 debian](https://mirrors.tuna.tsinghua.edu.cn/help/debian/)
- [清华 centos](https://mirrors.tuna.tsinghua.edu.cn/help/centos/)

Full development environment based on Docker.

### 工具脚本

初始化docker网络
```shell
bash _common/scripts/init-network.sh
```

初始化数据目录
```shell
bash _common/scripts/prepare.sh
```

### Simple (172.19.150.3)
| service | backend ip | frontend ip | version | 备注 |
|---|---|---|---|---|
| busybox | 172.19.150.3 | 172.19.140.3 | latest | |
| portainer | 172.19.150.4 | 172.19.140.4 | latest | |
| mysql57 | 172.19.150.7 | 172.19.140.7 | 5.7 | |
| mysql | 172.19.150.8 | 172.19.140.8 | 8.0 | |
| redis | 172.19.150.9 | 172.19.140.9 | 7.2 | |
| redis-stack | 172.19.150.10 | 172.19.140.10 | 7.2 | |
| memcached | 172.19.150.11 | 172.19.140.11 | latest | |
| beanstalkd | 172.19.150.13 | 172.19.140.13 | latest |
| beanstalkd-console | 172.19.150.14 | 172.19.140.14 | latest |
| certbot | 172.19.150.15 | 172.19.140.15 | latest |
| traefik | 172.19.150.16 | 172.19.140.16 | latest |
| nats | 172.19.150.17 | 172.19.140.17 | latest |
| tomcat8 | 172.19.150.18 | 172.19.140.18 | latest |
| postgres | 172.19.150.19 | 172.19.140.19 | latest |
| postgis | 172.19.150.20 | 172.19.140.20 | latest |
| pgadmin | 172.19.150.21 | 172.19.140.21 | latest |
| phpmyadmin | 172.19.150.25 | 172.19.140.25 | latest |
| docker-in-docker | 172.19.150.26 | 172.19.140.26 | latest |
| mongo | 172.19.150.27 | 172.19.140.27 | latest |
| rabbitmq | 172.19.150.28 | 172.19.140.28 | latest |
| soketi | 172.19.150.29 | 172.19.140.29 | latest |
| golang | 172.19.150.26 | 172.19.140.26 | latest |

### DevOps (172.19.150.110)
| service | backend ip | frontend ip | version | 备注 |
|---|---|---|---|---|
| gitlab | 172.19.150.110 | 172.19.140.110 | latest | |
| gitlab-runner | 172.19.150.111 | 172.19.140.111 | latest | |
| jenkins | 172.19.150.112 | 172.19.140.112 | latest | |
| promethus | 172.19.150.113 | 172.19.140.113 | latest | |
| grafana | 172.19.150.114 | 172.19.140.114 | latest | |

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



## portainer
密码最少12个字符
```text
username: admin
password: adminadminadmin
```