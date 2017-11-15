FROM nginx:alpine

ADD web.conf/vhost.conf /etc/nginx/conf.d/default.conf
