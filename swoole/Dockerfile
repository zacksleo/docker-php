FROM php:7-alpine
RUN apk update && apk add --no-cache mysql-client curl openssh-client openssl-dev icu-dev \
    libxml2-dev freetype libpng libjpeg-turbo freetype-dev libpng-dev libjpeg-turbo-dev g++ make autoconf supervisor

RUN curl https://codeload.github.com/swoole/swoole-src/tar.gz/v4.2.3 -o swoole.tgz
RUN tar -xzvf swoole.tgz && rm -f swoole.tgz

RUN cd swoole-* && phpize \
    && ./configure --enable-openssl \
    && make && make install \
    && cd .. && rm -rf swoole-* \
    && ls

RUN docker-php-ext-enable swoole
RUN php --ri swoole

RUN docker-php-ext-install pdo_mysql mbstring