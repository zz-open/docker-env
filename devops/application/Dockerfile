ARG GO_VERSION=1.21.4
FROM golang:${GO_VERSION}-alpine as builder
ARG APPLICATION_CODE_PATH_HOST
ARG APPLICATION_MAIN_NAME=main.go
ARG APPLICATION_CONF_NAME=config.yaml
ARG APPLICATION_BIN_NAME=main
ARG APPLICATION_VERSION=latest

LABEL maintainer="zz <373045134@qq.com>"

ENV GO111MODULE=on \
    CGO_ENABLED=0 \
    GOOS=linux \
    GOARCH=amd64 \
    GOPROXY=https://goproxy.cn,direct \
    GOBIN=/go/bin \
    PATH=$GOPATH/bin:$PATH
RUN sed -i 's/dl-cdn.alpinelinux.org/mirrors.aliyun.com/g' /etc/apk/repositories
RUN apk --update add gcc libc-dev upx ca-certificates && update-ca-certificates
WORKDIR /build
COPY ${APPLICATION_CODE_PATH_HOST} .
RUN go build -ldflags="-s -w" -o "${APPLICATION_BIN_NAME}" "${APPLICATION_MAIN_NAME}" && \
    upx --best ${APPLICATION_BIN_NAME} -o _upx_server && \
    mv -f _upx_server ${APPLICATION_BIN_NAME}

FROM alpine AS prod
ARG APPLICATION_BIN_NAME=main
ARG APPLICATION_CONF_NAME=config.yaml
COPY --from=builder /build/${APPLICATION_BIN_NAME} /dist/
COPY --from=builder /build/${APPLICATION_CONF_NAME} /dist/
LABEL app_version="${APPLICATION_VERSION}"

ARG TZ
ENV TZ ${TZ}
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone

WORKDIR /dist
ENTRYPOINT ["./main"]
EXPOSE 12000