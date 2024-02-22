FROM rabbitmq:3-management

USER root

ENV TZ=${TZ} \
    DEBIAN_FRONTEND=noninteractive

RUN apt update \
    && apt install -y tzdata wget \
    && ln -fs /usr/share/zoneinfo/${TZ} /etc/localtime \
    && echo ${TZ} > /etc/timezone \
    && dpkg-reconfigure --frontend noninteractive tzdata \
    && rm -rf /var/lib/apt/lists/*

RUN rabbitmq-plugins enable --offline rabbitmq_management

ARG RABBITMQ_ENABLE_DELAY_PLUGIN=false
RUN set -eux; \
    if [ ${RABBITMQ_ENABLE_DELAY_PLUGIN} = true ]; then \
        wget -O "/plugins/rabbitmq_delayed_message_exchange-3.12.0.ez" "https://github.com/rabbitmq/rabbitmq-delayed-message-exchange/releases/download/v3.12.0/rabbitmq_delayed_message_exchange-3.12.0.ez" && \
        rabbitmq-plugins enable rabbitmq_delayed_message_exchange \
    ;fi

EXPOSE 4369 5671 5672 15671 15672 25672