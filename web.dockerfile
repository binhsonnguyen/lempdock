FROM nginx:alpine

ADD web.conf/nginx.conf /etc/nginx/conf.d/default.conf
