ARG CERTBOT_VERSION=latest
FROM phusion/baseimage:bionic-1.0.0

LABEL maintainer="zz <373045134@qq.com>"

COPY ./volces-ubuntu-bionic-sources.list /etc/apt/sources.list

COPY run-certbot.sh /root/certbot/run-certbot.sh

RUN apt-get update
RUN apt-get install -y letsencrypt

ENTRYPOINT bash -c "bash /root/certbot/run-certbot.sh && sleep infinity"