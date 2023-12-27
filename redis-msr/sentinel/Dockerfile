ARG REDIS_VERSION=latest
FROM redis:${REDIS_VERSION}

LABEL maintainer="zz <373045134@qq.com>"

ENV SENTINEL_QUORUM 2
ENV SENTINEL_DOWN_AFTER 1000
ENV SENTINEL_FAILOVER 1000
ENV SENTINEL_MASTER mymaster
ENV SENTINEL_PORT 26379

RUN mkdir -p /redis
 
WORKDIR /redis
 
COPY sentinel.conf .
COPY sentinel-entrypoint.sh /usr/local/bin/
 
RUN chown redis:redis /redis/* && \
    chmod +x /usr/local/bin/sentinel-entrypoint.sh
 
EXPOSE 26379
 
ENTRYPOINT ["sentinel-entrypoint.sh"]