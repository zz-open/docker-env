ARG PMA_VERSION=latest
FROM phpmyadmin:${PMA_VERSION}

LABEL maintainer="zz <373045134@qq.com>"

# Add volume for sessions to allow session persistence
VOLUME /sessions

# We expose phpMyAdmin on port 80
EXPOSE 80
