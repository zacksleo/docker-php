FROM php:7-fpm-alpine
RUN apk update \
    && apk add --no-cache curl supervisor \
    && docker-php-ext-install pdo_mysql mbstring pcntl bcmath opcache
RUN docker-php-ext-enable pcntl bcmath opcache

RUN curl -sS https://getcomposer.org/installer | php \
    && mv composer.phar /usr/local/bin/composer

RUN apk del --no-cache curl