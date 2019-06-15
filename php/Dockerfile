FROM php:7.1-fpm

RUN apt-get update
RUN apt-get install -y git libmcrypt-dev libzip-dev libpq-dev
RUN docker-php-ext-install mcrypt pdo_mysql pdo_pgsql zip
RUN pecl install redis-3.1.1 xdebug-2.5.0
RUN docker-php-ext-enable redis xdebug
