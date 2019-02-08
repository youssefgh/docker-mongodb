FROM alpine:3.9

MAINTAINER Youssef GHOUBACH <ghoubach.youssef@gmail.com>

RUN apk add --update \
    mongodb=4.0.5-r0

VOLUME /data/db

EXPOSE 27017 28017

ENTRYPOINT ["mongod","--bind_ip=0.0.0.0"]