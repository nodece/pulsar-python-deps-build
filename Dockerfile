FROM alpine:3.19.1

RUN apk add --no-cache \
       bash \
       python3-dev \
       g++ \
       musl-dev \
       libffi-dev \
       py3-pip \
       py3-yaml gcc g++ linux-headers

RUN pip3 install --break-system-packages \
        kazoo ratelimit grpcio==1.62.2