1.尽量使用最新版本的redis
2.从github拷贝一份最新的redis.conf,链接：https://github.com/redis/redis/blob/6.2/redis.conf
3.修改master的redis.conf,只设置密码:requirepass


bind 127.0.0.1 -::1 修改为:bind 0.0.0.0 -::1
主服务器需要添加
requirepass 123456
从服务器需要添加
slaveof 172.11.0.10 6379
masterauth 123456

4.如果docker容器的目标网址段已存在：会报错Pool overlaps with other one on this address space
通过以下步骤解决
docker network ls
查看docker网卡

docker network rm 网卡id
删除docker网卡

docker network inspect 网卡id
查看docker网卡的相关详细信息


5.172.11.0.0给redis使用

6.在slave服务器是不能写的
>> set name 许磊

(error) You can't write against a read only replica.

7.主从模式的话，不启动sentinel结点就行
dc up -d redis-master redis-slave1  redis-slave2