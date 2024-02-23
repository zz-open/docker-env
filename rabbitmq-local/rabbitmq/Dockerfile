ARG RABBITMQ_VERSION=latest
FROM rabbitmq:${RABBITMQ_VERSION}-management

USER root

ENV TZ=${TZ} \
    DEBIAN_FRONTEND=noninteractive

RUN apt update \
    && apt install -y tzdata wget \
    && ln -fs /usr/share/zoneinfo/${TZ} /etc/localtime \
    && echo ${TZ} > /etc/timezone \
    && dpkg-reconfigure --frontend noninteractive tzdata \
    && rm -rf /var/lib/apt/lists/*