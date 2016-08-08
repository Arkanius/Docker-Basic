FROM debian

MAINTAINER Victor Gazotti <vtr.gomes@hotmail.com>

LABEL Description="Container with MySql service"

EXPOSE 3306

ENV MYSQL_USER=root \
    MYSQL_DATA_DIR=/var/lib/mysql \
    MYSQL_LOG_DIR=/var/log/mysql

RUN apt-get update && \
    DEBIAN_FRONTEND=noninteractive \ 
    apt-get install -yq  mysql-server && mysql_install_db && \ 
    chown -R mysql:mysql /var/lib/mysql && \
    chown -R mysql:mysql /var/run/mysqld

VOLUME ["/var/lib/mysql", "/var/log/mysql", "/var/run/mysqld"]

#USER mysql

#ENTRYPOINT ["/usr/bin/mysqld_safe"]

