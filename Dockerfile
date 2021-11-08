FROM alpine:latest

RUN apk add --no-cache \
    python3 \
    py3-pip \
    mysql-client \
    bash \
    && pip3 install --upgrade pip \
    && pip3 install \
    awscli \
    && rm -rf /var/cache/apk/* 

WORKDIR /app

ADD run .

ENTRYPOINT [ "/app/run" ]
