FROM php:5.6.40-apache

LABEL maintainer="zz <373045134@qq.com>"

# Set Environment Variables
ENV DEBIAN_FRONTEND=noninteractive

ENV LOG_STDOUT=/var/log/apache2/access.log

ENV LOG_STDERR=/var/log/apache2/error.log

WORKDIR /var/www/

COPY tsinghua-debian-stretch-sources.list /etc/apt/sources.list
COPY ./apache/vhost.conf /etc/apache2/sites-enabled/vhost.conf

COPY ./php/libevent-2.1.12-stable.tar.gz /tmp/libevent.tar.gz
COPY ./php/event-3.0.6.tgz /tmp/event.tar.gz

RUN set -eux; \
    apt-get update

RUN pecl channel-update pecl.php.net

RUN apt-get install -y --allow-unauthenticated \
      vim \
      net-tools \
      apt-utils \
      gnupg2 \
      git \
      procps

#
#--------------------------------------------------------------------------
# Software's Installation
#--------------------------------------------------------------------------
#
# Installing tools and PHP extentions using "apt", "docker-php", "pecl",
#

# Install "curl", "libmemcached-dev", "libpq-dev", "libjpeg-dev",
#         "libpng12-dev", "libfreetype6-dev", "libssl-dev", "libmcrypt-dev",

RUN apt-get install -y --allow-unauthenticated \
    curl \
    libmemcached-dev \
    libz-dev \
    libpq-dev \
    libjpeg-dev \
    libpng-dev \
    libfreetype6-dev \
    libssl-dev \
    libmcrypt-dev

# sockets zip soap redis gd mcrypt pdo_mysql mysqli

RUN set -eux; \
    # Install the PHP mcrypt extention
    docker-php-ext-install mcrypt; \
    # Install the PHP pdo_mysql extention
    docker-php-ext-install pdo_mysql mysqli; \
    # Install the PHP pdo_pgsql extention
    docker-php-ext-install pdo_pgsql; \
    # Install the PHP gd library
    docker-php-ext-configure gd \
            --enable-gd-native-ttf \
            --with-jpeg-dir=/usr/lib \
            --with-freetype-dir=/usr/include/freetype2; \
    docker-php-ext-install gd; \
    php -r 'var_dump(gd_info());'

###########################################################################
# PHP ZIP EXTENSION
###########################################################################

RUN apt-get install -yqq \
    libzip-dev zip unzip && \
    docker-php-ext-configure zip --with-libzip; \
    # Install the zip extension
    docker-php-ext-install zip && \
    php -m | grep -q 'zip'

###########################################################################
# PHP REDIS EXTENSION
###########################################################################

ARG INSTALL_PHPREDIS=false

RUN if [ ${INSTALL_PHPREDIS} = true ]; then \
    # Install Php Redis Extension
    if [ $(php -r "echo PHP_MAJOR_VERSION;") = "5" ]; then \
      pecl install -o -f redis-4.3.0; \
    elif [ $(php -r "echo PHP_MAJOR_VERSION;") = "7" ] && { [ $(php -r "echo PHP_MINOR_VERSION;") = "0" ] || [ $(php -r "echo PHP_MINOR_VERSION;") = "1" ] ;}; then \
      pecl install -o -f redis-5.3.7; \
    else \
      pecl install -o -f redis; \
    fi \
    && rm -rf /tmp/pear \
    && docker-php-ext-enable redis \
;fi

###########################################################################
# PHP Memcached:
###########################################################################

ARG INSTALL_MEMCACHED=false

RUN if [ ${INSTALL_MEMCACHED} = true ]; then \
    # Install the php memcached extension
    if [ $(php -r "echo PHP_MAJOR_VERSION;") = "5" ]; then \
      echo '' | pecl -q install memcached-2.2.0; \
    else \
      echo '' | pecl -q install memcached; \
    fi \
    && docker-php-ext-enable memcached \
;fi

###########################################################################
# SOAP:
###########################################################################

ARG INSTALL_SOAP=false

RUN if [ ${INSTALL_SOAP} = true ]; then \
    # Install the soap extension
    rm /etc/apt/preferences.d/no-debian-php && \
    apt-get -y install libxml2-dev php-soap && \
    docker-php-ext-install soap \
;fi

############################################################################
## Event:
############################################################################
USER root

ARG INSTALL_EVENT=false

RUN set -eux; \
  if [ ${INSTALL_EVENT} = true ]; then \
      # curl -L -o  /tmp/libevent.tar.gz https://github.com/libevent/libevent/releases/download/release-2.1.12-stable/libevent-2.1.12-stable.tar.gz   &&\
      mkdir -p /tmp/libevent-php &&\
      tar -C /tmp/libevent-php -zxvf /tmp/libevent.tar.gz --strip 1 &&\
      cd /tmp/libevent-php &&\
      ./configure --prefix=/usr/local/libevent-2.1.12  &&\
      make &&\
      make install &&\
      rm /tmp/libevent.tar.gz &&\
      docker-php-ext-install sockets  &&\
      # curl -L -o /tmp/event.tar.gz http://pecl.php.net/get/event-3.0.6.tgz &&\
      mkdir -p /tmp/event-php &&\
      tar -C /tmp/event-php -zxvf /tmp/event.tar.gz --strip 1 &&\
      cd /tmp/event-php &&\
      phpize &&\
      ./configure  --with-event-libevent-dir=/usr/local/libevent-2.1.12/ &&\
      make &&\
      make install &&\
      rm /tmp/event.tar.gz &&\
      docker-php-ext-enable event &&\
      php -m  | grep -q 'event' \
;fi
