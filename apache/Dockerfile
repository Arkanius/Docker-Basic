FROM debian

MAINTAINER Victor Gazotti vtr.gomes@hotmail.com

RUN apt-get update && apt-get -y install apache2 && apt-get clean

ENV APACHE_LOCK_DIR="/var/lock"
ENV APACHE_PID_FILE="/var/run/apache2.pid"
ENV APACHE_RUN_USER="www-data"
ENV APACHE_RUN_GROUP="www-data"
ENV APACHE_LOG_DIR="/var/log/apache2"

VOLUME /var/www/html

ENTRYPOINT ["apachectl", "-D", "FOREGROUND"]

EXPOSE 80
