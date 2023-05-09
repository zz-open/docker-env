# redis
单实例


# 自定义
- 修改env中的版本号
- 从github拷贝一份最新的redis.conf,链接：https://github.com/redis/redis/blob/6.2/redis.conf
- bind 127.0.0.1 -::1 修改为:bind 0.0.0.0 -::1
- requirepass 123456