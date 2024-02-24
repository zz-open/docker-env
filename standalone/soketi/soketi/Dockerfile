ARG SOKETI_VERSION=latest-16-debian
FROM quay.io/soketi/soketi:${SOKETI_VERSION}

LABEL maintainer="zz <373045134@qq.com>"

COPY config.json /app/bin/config.json

CMD ["--config=/app/bin/config.json"]

EXPOSE 6001 9601
