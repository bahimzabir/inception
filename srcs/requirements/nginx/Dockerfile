FROM alpine:3.15

RUN apk update && apk add nginx openssl && mkdir -p /etc/ssl/private\
    && openssl req -x509 -nodes -days 365 -newkey rsa:2048 -keyout\
    /etc/ssl/certs/nginx-selfsigned.key -out /etc/ssl/certs/nginx-selfsigned.crt\
    -subj "/CN=azabir.42.fr"

RUN mkdir -p /run/nginx && mkdir -p /var/www/html

COPY nginx.conf /etc/nginx/http.d/

EXPOSE 80 443

CMD ["nginx", "-g", "daemon off;"]
