FROM ubuntu:14.04

RUN apt-get update && \
    apt-get install -y \
      php5 \
      php5-cli \
      php5-gd \
      php5-json \
      php5-ldap \
      php5-mysql \
      php5-pgsql

EXPOSE 80

VOLUME ["/var/www/html"]

