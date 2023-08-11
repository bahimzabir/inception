#alpine + wordpress cli + wordpress (only)

FROM alpine:3.15

RUN apk update && apk add curl php7 php7-fpm php7-mysqli php7-zlib php7-curl php7-json php7-xml php7-phar php7-intl php7-dom php7-xmlreader php7-ctype php7-session php7-mbstring mariadb-client php7-redis

RUN mkdir -p /var/www/html

COPY ./tools/setup.sh ./setup.sh

RUN chmod +x ./setup.sh

WORKDIR /var/www/html

EXPOSE 9000

CMD ["sh", "/./setup.sh"]