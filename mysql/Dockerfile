FROM debian

MAINTAINER Victor Gazotti <vtr.gomes@hotmail.com>

LABEL Description="Container with MySql service"

EXPOSE 3306

ENV MYSQL_USER=root \
    MYSQL_DATA_DIR=/var/lib/mysql \
    MYSQL_RUN_DIR=/run/mysqld \
    MYSQL_LOG_DIR=/var/log/mysql

RUN apt-get update && DEBIAN_FRONTEND=noninteractive apt-get install -yq  mysql-server

ENTRYPOINT ["/usr/bin/mysqld_safe"]

