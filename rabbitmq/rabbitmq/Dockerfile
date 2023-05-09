FROM rabbitmq:management

#Ubunton镜像设置时区
ENV TZ=Asia/Shanghai \
    DEBIAN_FRONTEND=noninteractive

RUN apt update \
    && apt install -y tzdata \
    && ln -fs /usr/share/zoneinfo/${TZ} /etc/localtime \
    && echo ${TZ} > /etc/timezone \
    && dpkg-reconfigure --frontend noninteractive tzdata \
    && rm -rf /var/lib/apt/lists/*

#这两行不能分开写，必须挨着执行
COPY ./pkg/.erlang.cookie /var/lib/rabbitmq/.erlang.cookie
RUN chmod 600 /var/lib/rabbitmq/.erlang.cookie

COPY ./pkg/rabbitmq_delayed_message_exchange-3.9.0.ez /plugins/

RUN rabbitmq-plugins enable rabbitmq_management
RUN rabbitmq-plugins enable rabbitmq_delayed_message_exchange
RUN rabbitmq-plugins enable rabbitmq_tracing
RUN rabbitmq-plugins enable rabbitmq_stream
RUN rabbitmq-plugins enable rabbitmq_stream_management