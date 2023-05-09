ARG GOLANG_VERSION=latest
FROM golang:${GOLANG_VERSION}
LABEL maintainer="leixu <373045134@qq.com>"

ENV GOPROXY https://goproxy.cn,direct
ENV GO111MODULE on
ENV GOBIN /go/bin

USER root

RUN sed -i 's/deb.debian.org/mirrors.tuna.tsinghua.edu.cn/' /etc/apt/sources.list && \
    sed -i 's/security.debian.org/mirrors.tuna.tsinghua.edu.cn/' /etc/apt/sources.list && \
    sed -i 's/security-cdn.debian.org/mirrors.tuna.tsinghua.edu.cn/' /etc/apt/sources.list && \
    apt-get update && \
    apt-get upgrade -y && \
    apt-get install -y --no-install-recommends \
    curl \
    zip \
    unzip \
    git \
    vim \
    supervisor \
    net-tools

#####存放第三方包的路径
RUN mkdir -p /tmp/repository
COPY ./repository/* /tmp/repository

###### 自定义安装脚本,不执行，减少编译时间
COPY ./install.sh /install.sh
RUN chmod +x /install.sh
#RUN bash /install.sh && rm /install.sh

# 清理垃圾
RUN apt-get clean && \
    rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* && \
    rm /var/log/lastlog /var/log/faillog && \
    rm -rf /tmp/repository

# $GOPATH/bin添加到环境变量中
ENV PATH $GOPATH/bin:$PATH

# 设置工作目录
WORKDIR /go/src/project

EXPOSE 8000
EXPOSE 8080
EXPOSE 8001
EXPOSE 8002
EXPOSE 8003
EXPOSE 9001
EXPOSE 9002