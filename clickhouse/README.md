# Clickhouse[官网](https://clickhouse.com/docs/zh/getting-started/example-datasets/ontime/)

[示例](https://zhuanlan.zhihu.com/p/383817560)

# 命令
```text
1.进入client容器：docker exec -it single-clickhouse_clickhouse-client_1 /bin/bash

2.进入server容器：docker exec -it single-clickhouse_clickhouse-server_1 /bin/bash

3.拷贝配置文件
docker cp single-clickhouse_clickhouse-server_1:/etc/clickhouse-server/config.xml ./conf/config.xml
docker cp single-clickhouse_clickhouse-server_1:/etc/clickhouse-server/users.xml ./conf/users.xml

```

# 修改user.xml

修改默认用户default登录密码
模板：$MY_PASSWORD是参数
PASSWORD=$(base64 < /dev/urandom | head -c8); echo "$MY_PASSWORD"; echo -n "$MY_PASSWORD" | sha256sum | tr -d '-'

PASSWORD=$(base64 < /dev/urandom | head -c8); echo "123456"; echo -n "123456" | sha256sum | tr -d '-'
123456

root用户密码
PASSWORD=$(base64 < /dev/urandom | head -c8); echo "888888"; echo -n "888888" | sha256sum | tr -d '-'
888888
92925488b28ab12584ac8fcaa8a27a0f497b2c62940c8f4fbc8ef19ebc87c43e

打开注释：  <listen_host>::</listen_host>

# 登录client container连接server
```text
clickhouse-client -h 192.168.96.2 -u root --password 888888
clickhouse-client -h 192.168.96.2 -u default --password 123456
[root@ds2 bin]# vim docker-clickhouse-client

docker run --name clickhouse-client  -it --rm --link clickhouse-server:clickhouse-server-alias docker.io/yandex/clickhouse-client:latest --host 192.168.12.14 --port 9000 --user root --password 888888
```

# sql命令
```text
1.查看数据库：show databases;默认有default,system
2.选择数据库：use system;
3.显示表：show tables;
```






