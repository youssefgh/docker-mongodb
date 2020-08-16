FROM ubuntu:focal-20200720

MAINTAINER Youssef GHOUBACH <ghoubach.youssef@gmail.com>

RUN wget -qO - https://www.mongodb.org/static/pgp/server-4.4.asc | sudo apt-key add -

RUN echo "deb [ arch=amd64,arm64 ] https://repo.mongodb.org/apt/ubuntu focal/mongodb-org/4.4 multiverse" | sudo tee /etc/apt/sources.list.d/mongodb-org-4.4.list

RUN apt install -y mongodb-org=4.4.0 mongodb-org-server=4.4.0 mongodb-org-shell=4.4.0 mongodb-org-mongos=4.4.0 mongodb-org-tools=4.4.0

VOLUME /var/lib/mongodb

EXPOSE 27017 28017

ENTRYPOINT ["mongod","--bind_ip=0.0.0.0"]
