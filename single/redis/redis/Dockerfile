ARG REDIS_VERSION=latest
FROM redis:${REDIS_VERSION}

LABEL maintainer="zz <373045134@qq.com>"

COPY redis.conf /usr/local/etc/redis/redis.conf

VOLUME /data

CMD [ "redis-server", "/usr/local/etc/redis/redis.conf" ]

EXPOSE 6379
