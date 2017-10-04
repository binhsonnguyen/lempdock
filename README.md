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

Chạy các container lên và sử dụng

```bash
~/awesome-project/lempdock $ docker-compose up

```

[docker-docs]: https://docs.docker.com
[xdebug-phpstorm]: http://binhsonnguyen.com/2017/09/16/laradock-p3.html