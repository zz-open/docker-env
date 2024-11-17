ARG CADDY_VERSION=2.8.4-alpine
FROM caddy:${CADDY_VERSION}

RUN mkdir -p /etc/caddy/ssl

COPY ./caddy/Caddyfile /etc/caddy/Caddyfile

EXPOSE 80 443