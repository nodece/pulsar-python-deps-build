FROM alpine:3.19.1

RUN apk add --no-cache \
       bash \
       python3-dev \
       g++ \
       musl-dev \
       libffi-dev \
       py3-pip \
       py3-yaml gcc linux-headers py3-grpcio

COPY requirements.txt /requirements.txt

RUN pip3 install --break-system-packages --prefer-binary -r /requirements.txt
