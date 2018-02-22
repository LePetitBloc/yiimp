# use PHP 5.6 for compatbility with memcache-2.2.7
FROM php:5.6.33-fpm
RUN apt-get update && apt-get install -y \
        libfreetype6-dev \
        libjpeg62-turbo-dev \
        libmcrypt-dev \
        libpng12-dev \
        libc-client-dev \
        libkrb5-dev \
        libicu-dev \
        libpspell-dev \
        libzip-dev \
        librecode-dev \
        libtidy-dev \
        git \
        zlib1g-dev \
&&  rm -r /var/lib/apt/lists/* \
&&  docker-php-ext-install -j$(nproc) mcrypt \
&&  docker-php-ext-configure gd --with-freetype-dir=/usr/include/ --with-jpeg-dir=/usr/include/ \
&&  docker-php-ext-install -j$(nproc) gd \
&&  docker-php-ext-configure imap --with-kerberos --with-imap-ssl \
&&  docker-php-ext-install imap\
&&  docker-php-ext-configure intl \
&&  docker-php-ext-install intl \
&&  docker-php-ext-install \
        pspell \
        recode \
        zip \
        tidy \
        pdo_mysql \
&&  yes '' | pecl install memcache-2.2.7 \
&&  pecl clear-cache \
&&  docker-php-ext-enable memcache

# application log
RUN touch /var/log/debug.log \
&& chown www-data /var/log/debug.log

EXPOSE 9000
