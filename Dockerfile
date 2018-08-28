FROM alpine:3.8

MAINTAINER Youssef GHOUBACH <ghoubach.youssef@gmail.com>

RUN apk add --update \
    mongodb=3.6.7-r0

VOLUME /data/db

EXPOSE 27017 28017

ENTRYPOINT ["mongod","--bind_ip=0.0.0.0"]