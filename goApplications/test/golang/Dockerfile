ARG GOLANG_VERSION=latest
# 使用Go的官方映像作为基础映像
FROM golang:${GOLANG_VERSION}
LABEL maintainer="leixu <373045134@qq.com>"

RUN apt-get update && \
 apt-get -y install supervisor vim

# 安装beego程序包和bee工具。beego程序包将在应用程序内部使用，bee工具将用于在开发过程中实时重载代码。
RUN go get github.com/astaxie/beego && go get github.com/beego/bee

#RUN /bin/sh -c 'cd /go/src/webdemo && bee run webdemo'
#RUN cd /go/src/webdemo

# 通过开发计算机上容器的8080端口暴露该应用程序。最后一行，
EXPOSE 8080

#WORKDIR /go/src/webdemo

#CMD ["bee", "run"]