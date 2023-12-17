# redismod
[仓库地址](https://github.com/RedisLabsModules/redismod/blob/master/Dockerfile)
单实例，增加了扩展

# 修改配置
- 修改conf,增加loadmodule配置
```text
loadmodule /usr/lib/redis/modules/redisai.so
loadmodule /usr/lib/redis/modules/redisearch.so
loadmodule /usr/lib/redis/modules/redisgraph.so
loadmodule /usr/lib/redis/modules/redistimeseries.so
loadmodule /usr/lib/redis/modules/rejson.so
loadmodule /usr/lib/redis/modules/redisbloom.so
loadmodule /usr/lib/redis/modules/redisgears.so
```

