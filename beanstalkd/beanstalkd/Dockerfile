FROM alpine

LABEL maintainer="zaizai <33045134@qq.com>"

COPY ./install.sh /install.sh

RUN chmod +x /install.sh && sh /install.sh && rm /install.sh

EXPOSE 11300

VOLUME ["/var/lib/beanstalkd"]

ENTRYPOINT /usr/bin/beanstalkd -b /var/lib/beanstalkd/
