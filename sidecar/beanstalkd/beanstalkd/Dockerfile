FROM alpine

LABEL maintainer="zz <373045134@qq.com>"

RUN sed -i 's/dl-cdn.alpinelinux.org/mirrors.tuna.tsinghua.edu.cn/g' /etc/apk/repositories

RUN apk add --no-cache beanstalkd

VOLUME ["/var/lib/beanstalkd"]

EXPOSE 11300

ENTRYPOINT ["/usr/bin/beanstalkd", "-b", "/var/lib/beanstalkd/"]
