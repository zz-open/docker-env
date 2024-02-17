# redis-stack
- [官网](https://redis.io/docs/install/install-stack/docker/)
- [redis-stack github](https://github.com/redis-stack/redis-stack/blob/master/envs/dockers/dockerfile.tmpl)

## 问题
- 脚本中的环境变量不生效
```shell
REDIS_ARGS="--requirepass redis-stack --appendonly yes"
```
- COPY redis.conf不生效，通过volume挂载就生效，暂时不清楚原理