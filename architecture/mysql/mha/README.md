# GTID
```text
本环境基于GTID方式配置主从同步
```
## 步骤
- master和slave my.cnf都配置好
- master创建一个用来复制的账号并授权
- 启动master,slave
- slave设置好链路开启复制
  ```text
  change master to
  master_host='主数据库ip',
  master_port=主数据库端口,
  master_user='上面创建的账号',
  master_password='密码',
  master_auto_position=1;

  start slave
  ```


## Master配置
- log-bin=mysql_bin
- binlog_format=ROW
- server-id=1
- gtid-mode=on
- enforce-gtid-consistency=on
- log-slave-updates=on

[//]: # (- skip-slave-start=1)

## Slave配置
- server-id=2
- relay-log=/var/log/relay.log
- gtid_mode=on
- enforce-gtid-consistency=true
- read_only=on
- master-info-repository=TABLE
- relay-log-info-repository=TABLE
    ```text
    #设置从服务器连接主服务器的信息以及中继日志等相关信息保存到表中, 默认存储在文件中
    ```
- replicate_wild_ignore_table=mysql.%
- replicate_wild_ignore_table=performance_schema.%
- replicate_wild_ignore_table=information_schema.%