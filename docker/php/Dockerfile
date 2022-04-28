FROM php:7.4-fpm

RUN apt-get update && apt-get install -y zip unzip libbz2-dev libfreetype6-dev libjpeg62-turbo-dev libmcrypt-dev libpng-dev libicu-dev icu-devtools libxml2-dev libzip-dev zlib1g-dev libssl-dev libcurl3-openssl-dev openssl libcurl4-openssl-dev libevent-dev libxslt-dev ca-certificates curl

RUN apt-get update && apt-get install -y default-mysql-client
RUN docker-php-ext-install -j$(nproc) gd bcmath bz2 calendar curl exif ftp gettext intl mysqli opcache pcntl pdo_mysql shmop simplexml sockets xsl soap zip
RUN docker-php-ext-configure gd --with-freetype --with-jpeg
RUN docker-php-ext-enable bcmath bz2 calendar curl exif ftp gettext intl mysqli opcache pcntl pdo_mysql shmop simplexml sockets xsl soap zip gd

RUN pecl channel-update pecl.php.net
RUN pecl install apcu

RUN pecl install mongodb

RUN pecl install redis

RUN rm -rf /var/lib/apt/lists/*

RUN chmod 777 /tmp
RUN mkdir /var/www/.composer
RUN chmod 777 /var/www/.composer
RUN chown www-data:www-data /var/www/.composer

USER www-data

WORKDIR /var/www/

