FROM php:7.1-fpm-alpine
RUN apk update \
    && apk add --no-cache supervisor \
    && docker-php-ext-install pdo_mysql mbstring opcache \
    && docker-php-ext-enable opcache
RUN pecl install mcrypt-snapshot