ARG ZOOKEEPER_VERSION=latest
FROM zookeeper:${ZOOKEEPER_VERSION}

LABEL maintainer="zz <373045134@qq.com>"

VOLUME /data
VOLUME /datalog

EXPOSE 2181

CMD ["zkServer.sh", "start-foreground"]