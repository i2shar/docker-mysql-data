FROM mysql:8
MAINTAINER Tushar I

COPY docker-entrypoint-initdb.d /docker-entrypoint-initdb.d
WORKDIR /docker-entrypoint-initdb.d
