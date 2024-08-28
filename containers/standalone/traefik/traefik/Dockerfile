ARG TRAEFIK_VERSION=latest
FROM traefik:${TRAEFIK_VERSION}

LABEL maintainer="zz <373045134@qq.com>"

WORKDIR /data

RUN touch acme.json

RUN chmod 600 acme.json

VOLUME /data