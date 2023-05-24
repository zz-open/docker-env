ARG ROCKETMQ_VERSION
FROM apache/rocketmq:${ROCKETMQ_VERSION}

ENV TZ Asia/Shanghai

ARG ROCKETMQ_VERSION
ENV ROCKETMQ_VERSION=${ROCKETMQ_VERSION}

USER root

CMD "sh" "mqbroker" "-c" "/opt/rocketmq-${ROCKETMQ_VERSION}/conf/broker.conf"