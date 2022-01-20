1.尽量使用最新版本的redis
2.从github拷贝一份最新的redis.conf,链接：https://github.com/redis/redis/blob/6.2/redis.conf
3.修改master的redis.conf,只设置密码:requirepass

###############
1.修改bind
bind 127.0.0.1 -::1 修改为:bind 0.0.0.0 -::1
2.修改密码
requirepass 123456