ARG REDIS_VERSION
FROM redis:${REDIS_VERSION}

LABEL maintainer="zaizai <33045134@qq.com>"

RUN mkdir -p /usr/local/etc/redis

COPY sentinel.conf /usr/local/etc/redis/sentinel.conf

EXPOSE 26379

CMD ["redis-sentinel", "/usr/local/etc/redis/sentinel.conf"]
