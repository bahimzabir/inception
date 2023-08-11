FROM alpine:3.15

RUN apk update && apk upgrade
RUN apk add wget php php7-mysqli php7-session

WORKDIR /var/www/adminer

RUN mkdir -p /var/www/adminer \
    && wget -O /var/www/adminer/index.php https://www.adminer.org/latest.php


EXPOSE 8000

CMD ["php", "-S", "0.0.0.0:8000"]