# pulsar
- [pulsar-manager](https://pulsar.apache.org/docs/3.2.x/administration-pulsar-manager/)
- [pulsar](https://pulsar.apache.org/docs/3.2.x/getting-started-docker-compose/
)

pulsar standalone

## manager ui
```shell
# 初始化超级用户密码
bash reset-manager-password.sh

# 输入账号密码登录
http://192.168.200.253:9527

username: admin
password: apachepulsar

# New Environment
Environment Name: my-pulsar-cluster
Service URL: http://192.168.200.253:8080
Bookie URL: http://192.168.200.253:2181
```