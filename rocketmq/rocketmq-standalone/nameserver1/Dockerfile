ARG ROCKETMQ_VERSION
ARG ROCKETMQ_IMAGE
FROM ${ROCKETMQ_IMAGE}:${ROCKETMQ_VERSION}

ENV TZ Asia/Shanghai

USER root
#为了防止添加失败，加上-U 参数，更新仓储缓存。

RUN apk add -U tzdata && cp /usr/share/zoneinfo/${TZ} /etc/localtime \
    && echo ${TZ} > /etc/timezone