ARG ZOOKEEPER_VERSION
FROM zookeeper:${ZOOKEEPER_VERSION}

LABEL maintainer="zaizai <33045134@qq.com>"

VOLUME /data
VOLUME /datalog

EXPOSE 2181

CMD ["zkServer.sh", "start-foreground"]