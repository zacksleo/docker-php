FROM zacksleo/php:7.1-alpine-fpm-supervisor
#RUN echo "http://mirrors.aliyun.com/alpine/v3.4/main/" > /etc/apk/repositories
COPY build_swoole.sh /root
RUN sh /root/build_swoole.sh