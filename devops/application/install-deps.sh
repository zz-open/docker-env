#!/usr/bin/env bash

repositoryPath="/tmp/pkg"

installProtoc(){
  # 安装 protoc
  if [ ! -f "${repositoryPath}/protoc-3.19.1-linux-x86_64.zip" ]; then
    curl -L -o /tmp/protoc.zip https://github.com/protocolbuffers/protobuf/releases/download/v3.19.1/protoc-3.19.1-linux-x86_64.zip && \
          unzip -d /tmp/protoc /tmp/protoc.zip && \
          mv /tmp/protoc/bin/protoc $GOPATH/bin
  else
    unzip -d /tmp/protoc ${repositoryPath}/protoc-3.19.1-linux-x86_64.zip  && \
              mv /tmp/protoc/bin/protoc $GOPATH/bin
  fi
}

goGet(){
  # 安装 grpc-go
  go get -u google.golang.org/grpc
  # 安装 protobuf
  go get -u github.com/golang/protobuf
  # 安装 protoc-gen-go
  #go get -u github.com/golang/protobuf/protoc-gen-go@v1.4.0
  # 安装dtm依赖
  # go get -u github.com/dtm-labs/dtm
  go get -u github.com/dtm-labs/dtmcli
  # 安装 gin
  go get -u github.com/gin-gonic/gin
}

install() {
    installProtoc
    goGet
}

install