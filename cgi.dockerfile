FROM php:fpm

RUN apt-get update

RUN apt-get install -y libmcrypt-dev --no-install-recommends

RUN docker-php-ext-install mcrypt pdo pdo_mysql

RUN yes | pecl install xdebug && docker-php-ext-enable xdebug

ADD xdebug.ini /usr/local/etc/php/conf.d/xdebug.ini

COPY cgi.conf/* /usr/local/etc/php/conf.d/

