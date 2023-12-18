FROM alpine

LABEL maintainer="zz <373045134@qq.com>"

RUN apk add --no-cache beanstalkd
ENTRYPOINT ["/usr/bin/beanstalkd"]

# COPY ./install.sh /install.sh
# RUN chmod +x /install.sh && sh /install.sh && rm /install.sh

# EXPOSE 11300

# VOLUME ["/var/lib/beanstalkd"]

# ENTRYPOINT /usr/bin/beanstalkd -b /var/lib/beanstalkd/
