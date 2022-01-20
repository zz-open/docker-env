#Redismod 仓库：https://github.com/RedisLabsModules/redismod/blob/master/Dockerfile
#https://oss.redis.com/redisbloom/Quick_Start/

1.修改conf,增加loadmodule配置
loadmodule /usr/lib/redis/modules/redisai.so
loadmodule /usr/lib/redis/modules/redisearch.so
loadmodule /usr/lib/redis/modules/redisgraph.so
loadmodule /usr/lib/redis/modules/redistimeseries.so
loadmodule /usr/lib/redis/modules/rejson.so
loadmodule /usr/lib/redis/modules/redisbloom.so
loadmodule /usr/lib/redis/modules/redisgears.so


2.