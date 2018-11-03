FROM zacksleo/php:laravel
RUN apk update && apk add --no-cache openssl-dev \
&& pecl download swoole && mv swoole-* swoole.tgz && gzip -d < swoole.tgz | tar -xvf - \
&& cd swoole-* && phpize \
&& ./configure --enable-openssl \
&& make && make install \
&& cd .. rm -f swoole.tgz && rm -rf swoole-* \
&& ls && apk del --no-cache openssl-dev \
&& docker-php-ext-enable swoole && php --ri swoole
