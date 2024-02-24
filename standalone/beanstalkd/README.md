# beanstalkd 
- [beanstalkd github](https://github.com/beanstalkd/beanstalkd)
- [beanstalkd 官网](https://beanstalkd.github.io/)
- [参考](https://www.kancloud.cn/vson/php-message-queue/891904)

# 命令参数
```shell
-b 开启binlog，断电后重启会自动恢复任务。
-f MS fsync最多每MS毫秒
-F从不fsync（默认）
-l ADDR侦听地址（默认为0.0.0.0）
-p端口侦听端口（默认为11300）
-u USER成为用户和组
-z BYTES设置最大作业大小（以字节为单位）（默认值为65535）
-s BYTES设置每个wal文件的大小（默认为10485760） （将被舍入到512字节的倍数）
-c压缩binlog（默认）
-n 不要压缩binlog
-v显示版本信息
-V增加冗长度
-h显示这个帮助
```

# beanstalk-console
```shell
http://localhost:2080
```

# 集群
集群形式的beanstalkd类似memcached，节点之间不需要通信，水平扩展，客户端连接实现负载均衡策略