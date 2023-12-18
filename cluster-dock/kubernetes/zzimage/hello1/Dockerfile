FROM golang:1.21.4-alpine as builder
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
COPY . .
RUN go build -ldflags="-s -w" -o hello main.go

FROM alpine AS prod
COPY --from=builder /build/hello /dist/
WORKDIR /dist
ENTRYPOINT [ "./hello"]
EXPOSE 8080