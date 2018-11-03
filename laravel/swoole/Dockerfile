FROM zacksleo/php:laravel
RUN apk update && apk add --no-cache openssl-dev autoconf g++ make \
&& pecl download swoole && mv swoole-* swoole.tgz && gzip -d < swoole.tgz | tar -xvf - \
&& cd swoole-* && phpize \
&& ./configure --enable-openssl \
&& make && make install \
&& cd .. rm -f swoole.tgz && rm -rf swoole-* \
&& ls && docker-php-ext-enable swoole \
&& apk del --no-cache autoconf make && php --ri swoole
