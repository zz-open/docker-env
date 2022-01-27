FROM yedf/dtm:latest
LABEL maintainer="leixu <373045134@qq.com>"

COPY ./config.yml /app/dtm/configs/config.yaml

ENTRYPOINT ["/app/dtm/dtm", "-c", "/app/dtm/configs/config.yaml"]