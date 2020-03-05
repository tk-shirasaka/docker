FROM php:7.4-fpm

RUN apt-get update
RUN apt-get install -y libzip-dev libpq-dev
RUN docker-php-ext-install pdo_mysql pdo_pgsql zip
RUN pecl install redis-5.1.1 xdebug-2.9.2
RUN docker-php-ext-enable redis xdebug
