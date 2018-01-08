apk update && apk add git autoconf build-base linux-headers libaio-dev pcre-dev openssl-dev icu-dev
# ln -s /usr/bin/php-config7 /usr/bin/php-config
# ln -s /usr/bin/phpize7 /usr/bin/phpize

# cd /root/
# git clone https://github.com/swoole/swoole-src.git
# cd /root/swoole-src
# phpize
#./configure --enable-openssl
# make && make install

pecl install swoole-2.0.12 && docker-php-ext-enable swoole

apk del libaio-dev php-dev git autoconf build-base linux-headers pcre-dev
 apk del --no-cache php-dev
 apk del --no-cache git
 apk del --no-cache build-base
 apk del --no-cache make
apk del --no-cache openssl-dev
 apk del --no-cache linux-headers
 apk del --no-cache libaio-dev
 apk del --no-cache pcre-dev
 apk del --no-cache autoconf
 apk del --no-cache .persistent-deps
 apk del --no-cache libmcrypt-dev
 apk del --no-cache g++
# apk del --no-cache icu-dev
apk info
php -m
rm -rf /var/cache/apk/*
rm -rf /root/swoole-src/
rm -rf /tmp/*