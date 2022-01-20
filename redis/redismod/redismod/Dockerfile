ARG REDIS_VERSION
FROM redislabs/redismod:${REDIS_VERSION}

LABEL maintainer="xulei <373045134@qq.com>"

RUN mkdir -p /usr/local/etc/redis

COPY redis.conf /usr/local/etc/redis/redis.conf

EXPOSE 6379

ENTRYPOINT ["redis-server", "/usr/local/etc/redis/redis.conf"]