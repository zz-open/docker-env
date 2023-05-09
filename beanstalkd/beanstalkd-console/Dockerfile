FROM php:7.4

LABEL maintainer="Mahmoud Zalt <mahmoud@zalt.me>"

RUN apt-get update && apt-get install -y curl

COPY beanstalk_console-1.7.11.tar.gz /tmp

RUN cd /tmp && \
    tar -xzvf beanstalk_console-1.7.11.tar.gz && \
    mv beanstalk_console-1.7.11 /source

#需要翻墙下载
#RUN curl -sL https://github.com/ptrofimov/beanstalk_console/archive/1.7.11.tar.gz | tar xvz -C /tmp
#RUN mv /tmp/beanstalk_console-master /source

RUN apt-get remove --purge -y curl && \
    apt-get autoclean && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

COPY config.php /source/config.php

EXPOSE 2080

CMD bash -c 'php -S 0.0.0.0:2080 -t /source/public'