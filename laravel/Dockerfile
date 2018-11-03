FROM php:7-fpm-alpine
RUN apk update \
    && apk add --no-cache supervisor \
    && docker-php-ext-install pdo_mysql mbstring pcntl bcmath opcache \
    && docker-php-ext-enable pcntl bcmath opcache