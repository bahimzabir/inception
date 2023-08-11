FROM alpine:3.15

RUN apk update && apk add --no-cache curl

RUN curl -LO https://github.com/google/cadvisor/releases/download/v0.47.0/cadvisor-v0.47.0-linux-amd64

RUN chmod +x cadvisor-v0.47.0-linux-amd64
RUN mv cadvisor-v0.47.0-linux-amd64 cadvisor

EXPOSE 8080

CMD ["./cadvisor"]