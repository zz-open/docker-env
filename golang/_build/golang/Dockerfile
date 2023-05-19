ARG GOLANG_VERSION=latest
FROM golang:${GOLANG_VERSION}
LABEL maintainer="zaizai <33045134@qq.com>"

# 环境变量
ENV GOPROXY https://goproxy.cn,direct
ENV GO111MODULE on
ENV GOBIN /go/bin
ENV PATH $GOPATH/bin:$PATH

USER root
# 设置源，并安装一些常用命令
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

## 存放第三方包的路径, 自定义安装脚本
RUN mkdir -p /tmp/pkg
COPY ./_scripts/pkg/* /tmp/pkg
COPY ./_scripts/install.sh /install.sh
RUN chmod +x /install.sh
#RUN bash /install.sh && rm /install.sh

# 清理垃圾
RUN apt-get clean && \
    rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* && \
    rm /var/log/lastlog /var/log/faillog && \
    rm -rf /tmp/pkg


# 设置工作目录
WORKDIR /go/src/project

EXPOSE 8000 8080 8001 8002 8003 9001 9002