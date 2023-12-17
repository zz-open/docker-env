# docker-env
- [docker-compose 文档](https://docs.docker.com/compose/compose-file/)

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

### service 列表
| service | backend ip | frontend ip | version | 备注 |
|---|---|---|---|---|
| busybox | 172.19.150.3 | 172.19.140.3 | latest | |
| portainer | 172.19.150.4 | 172.19.140.4 | latest | |
| gitlab | 172.19.150.5 | 172.19.140.5 | latest | |
| jenkins | 172.19.150.6 | 172.19.140.6 | latest | |
| mysql57 | 172.19.150.7 | 172.19.140.7 | 5.7 | |
| mysql | 172.19.150.8 | 172.19.140.8 | 8.0 | |
| redis | 172.19.150.9 | 172.19.140.9 | 7.2 | |
| redis-stack | 172.19.150.10 | 172.19.140.10 | 7.2 | |
| memcached | 172.19.150.11 | 172.19.140.11 | latest | |
| gitlab-runner | 172.19.150.12 | 172.19.140.12 | latest | |






| beanstalkd | 172.19.150.11 | 172.19.140.11 | |
| beanstalkd-console | 172.19.150.11 | 172.19.140.11 | |
| apache2 | 172.19.150.11 | 172.19.140.11 | |
| nginx | 172.19.150.11 | 172.19.140.11 | |
| mongodb | 172.19.150.11 | 172.19.140.11 | |
| postgresql | 172.19.150.11 | 172.19.140.11 | |
| tomcat | 172.19.150.11 | 172.19.140.11 | |
| openresty | 172.19.150.11 | 172.19.140.11 | |
| tomcat | 172.19.150.11 | 172.19.140.11 | |
| golang | 172.19.150.11 | 172.19.140.11 | |
| certbot | 172.19.150.11 | 172.19.140.11 | |

### 目标
- [x] busybox
- [x] portainer
- [x] gitlab
- [x] jenkins
- [x] mysql57
- [x] mysql
- [x] redis
- [x] redis-stack