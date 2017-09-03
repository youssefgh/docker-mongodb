FROM alpine:3.6

MAINTAINER Youssef GHOUBACH <ghoubach.youssef@gmail.com>

RUN apk add --update \
    mongodb=3.4.4-r0

VOLUME /data/db

EXPOSE 27017 28017

ENTRYPOINT mongod
