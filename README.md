lempdock
===

Một bộ khung các docker container đơn giản để chạy dự án php/lemp/lamp.

## Cài đặt docker

Theo dõi hướng dẫn cài đặt docker [tại đây][docker-docs].

## Cấu hình XDebug

Theo dõi hướng dẫn cấu hình sử dụng XDebug cho PHPStorm [tại đây][xdebug-phpstorm].

## Hướng dẫn sử dụng

Clone project này, có thể clone vào trong project hiện tại của bạn bằng câu lệnh:

```bash
~/awesome-project $ git submodule add https://github.com/binhsonnguyen/lempdock.git
~/awesome-project $ cd lempdock
~/awesome-project/lempdock $ 

```

Hoặc

```bash
~/awesome-project $ git submodule add git@github.com:binhsonnguyen/lempdock.git
~/awesome-project $ cd lempdock 
~/awesome-project/lempdock $ 

```

(Trong trường hợp bạn chưa bao giờ build image này) Build image `codegym/php7-fpm`

```bash
~/awesome-project/lempdock $ cd php7-prebuild
~/awesome-project/lempdock/php7-prebuild $ ./build
~/awesome-project/lempdock/php7-prebuild $ cd ..
~/awesome-project/lempdock $ 

```

Trong thư mục `lempdock`, tạo một bản copy của file `.env.example` với tên `.env`

```
~/awesome-project/lempdock $ cp .env.example .env

```

Cấu hình thư mục source và cổng theo ý bạn trong file `.env`

```text
APPLICATION=../
LOGS_DIR=../logs/cgi/xdebug/
PORT=4000

MYSQL_VERSION=8
MYSQL_DATABASE=default
MYSQL_USER=default
MYSQL_PASSWORD=secret
MYSQL_PORT=3306
MYSQL_ROOT_PASSWORD=root

```


Cấu hình nginx bằng cách tạo ra file vhost.conf trong thư mục web.conf, có thể sử dụng example có sẵn:

```bash
~/awesome-project/lempdock $ cp web.conf/nginx.conf.example web.conf/nginx.conf
```

Cấu hình db và url cho app php, tùy theo framework mà bạn đang sử dụng, đây là mẫy `.env` cho laravel

```text
APP_NAME=Laravel
APP_ENV=local
APP_KEY=
APP_DEBUG=true
APP_LOG_LEVEL=debug
APP_URL=http://localhost:4000

DB_CONNECTION=mysql
DB_HOST=127.0.0.1
DB_PORT=3306
DB_DATABASE=default
DB_USERNAME=default
DB_PASSWORD=secret

```

Chạy các container lên và sử dụng

```bash
~/awesome-project/lempdock $ docker-compose up

```

[docker-docs]: https://docs.docker.com
[xdebug-phpstorm]: http://binhsonnguyen.com/2017/09/16/laradock-p3.html
