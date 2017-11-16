FROM php:7.1-fpm-alpine
RUN docker-php-ext-install pdo_mysql
ENV TZ=Asia/Shanghai
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone