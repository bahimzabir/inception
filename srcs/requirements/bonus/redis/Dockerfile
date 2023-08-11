# create redus image

FROM alpine:3.15

RUN apk update && apk upgrade
RUN apk add --no-cache redis

EXPOSE 6379

ENTRYPOINT ["redis-server", "--protected-mode", "no"]