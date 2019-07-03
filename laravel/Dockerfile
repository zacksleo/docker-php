FROM php:7-fpm-alpine
RUN apk update \
    && apk add --no-cache supervisor \
    && docker-php-ext-install pdo_mysql mbstring pcntl bcmath opcache \
    && docker-php-ext-enable pcntl bcmath opcache
# Install GD2
RUN apk --update add --no-cache freetype libpng libjpeg-turbo freetype-dev libpng-dev libjpeg-turbo-dev  \
    && docker-php-ext-configure gd \
    --with-gd \
    --with-freetype-dir=/usr/include/ \
    --with-png-dir=/usr/include/ \
    --with-jpeg-dir=/usr/include/ \
    && docker-php-ext-install gd  \
    && apk del --no-cache freetype-dev libpng-dev libjpeg-turbo-dev