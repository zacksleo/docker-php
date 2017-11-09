FROM php:7.1-fpm-alpine
RUN echo "http://mirrors.aliyun.com/alpine/v3.4/main/" > /etc/apk/repositories
RUN docker-php-ext-install pdo_mysql
RUN apk update && apk update && apk add  --no-cache supervisor
