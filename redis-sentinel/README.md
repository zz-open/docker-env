# redis 集群环境
```text
redis主从+sentinel(哨兵)
```

# redis.conf 配置
1. 尽量使用最新版本的redis
2. 从github拷贝一份最新的redis.conf,[链接](https://github.com/redis/redis/blob/6.2/redis.conf)
3. 修改master的redis.conf, 修改requirepass
4. bind 127.0.0.1 -::1 修改为:bind 0.0.0.0 -::1
5. 主服务器需要修改 requirepass 123456 
6. 从服务器需要修改 
    ```text
    replicaof redis-master1 6379
    masterauth 123456
    ```
# sentinel.conf 配置
1. 节点配置添加
   ```text
   此处还是使用ip吧，使用hostname要改好几个配置
   
   sentinel monitor mymaster 172.19.9.21 6379 2
   
   sentinel auth-pass mymaster 123456
   
   ```
   
## slave结点只能读不能写
>> set name 许磊

(error) You can't write against a read only replica.

## slaveof VS replicaof
```text
Redis5.0之前版本使用 slaveof
Redis5.0之后版本使用 replicaof
```