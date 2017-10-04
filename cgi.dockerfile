FROM codegym/php7-fpm

RUN apt-get install -y libmcrypt-dev --no-install-recommends

RUN docker-php-ext-install mcrypt pdo pdo_mysql

RUN yes | pecl install xdebug && docker-php-ext-enable xdebug

ADD xdebug.ini /usr/local/etc/php/conf.d/xdebug.ini
