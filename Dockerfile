FROM ubuntu:15.04

MAINTAINER Samuel 20150924

RUN apt-get -y -q install nginx

RUN mkdir -p /var/www/html/website
ADD nginx/global.conf /etc/nginx/conf.d/
ADD nginx/nginx.conf /etc/nginx/
ADD website /var/www/html/website

EXPOSE 80
