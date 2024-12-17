# docker-compose-env
Full Stack development environment based on Docker Compose.

# 服务清单
## SINGLE (单机服务)
172.11.4.3 start

| service | backend ip | frontend ip | version | 备注 |
|---|---|---|---|---|
| portainer | 172.11.4.3 | 172.10.4.3 | latest | |
| busybox | 172.11.4.4 | 172.10.4.4 | latest | |
| mysql57 | 172.11.4.5 | 172.10.4.5 | 5.7 | |
| mysql8 | 172.11.4.6 | 172.10.4.6 | 8.0~8.3 | |
| redis-stack | 172.11.4.7 | 172.10.4.7 | 7.4.0-v1 | |
| redis | 172.11.4.8 | 172.10.4.8 | latest | |
| memcached | 172.11.4.9 | 172.10.4.9 | 1.6.23 | |
| mongo | 172.11.4.10 | 172.10.4.10 | 7.0.5 | |
| mongo-webui | 172.11.4.11 | 172.10.4.11 | latest | 待定 |

## STACK (集成式服务)
172.11.4.3 start

| service | backend ip | frontend ip | version | 备注 |
|---|---|---|---|---|

## CLUSTER (集群服务)
172.11.4.3 start

| service | backend ip | frontend ip | version | 备注 |
|---|---|---|---|---|


## PROXY (静态代理服务)
172.11.4.3 start

| service | backend ip | frontend ip | version | 备注 |
|---|---|---|---|---|
