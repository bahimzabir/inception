FROM alpine:3.15

RUN apk update && apk upgrade
RUN apk add nodejs npm git

EXPOSE 3000

RUN mkdir -p /app
WORKDIR /app

COPY ./tools/install.sh /app/install.sh

RUN chmod +x /app/install.sh

CMD ./install.sh