ARG REDIS_VERSION
FROM redis:${REDIS_VERSION}

LABEL maintainer="zz <373045134@qq.com>"

RUN mkdir -p /usr/local/etc/redis

COPY redis.conf /usr/local/etc/redis/redis.conf

EXPOSE 6379

CMD ["redis-server", "/usr/local/etc/redis/redis.conf"]
