FROM php:7.1-fpm-alpine
RUN docker-php-ext-install pdo_mysql
RUN apk update && apk add --no-cache supervisor
ENV TZ=Asia/Shanghai
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone