FROM debian

MAINTAINER Victor Gazotti <vtr.gomes@hotmail.com>

LABEL Description="Container with MySql service"

EXPOSE 3306

ENV MYSQL_USER=root \
    MYSQL_DATA_DIR=/var/lib/mysql \
    MYSQL_LOG_DIR=/var/log/mysql

RUN apt-get update && DEBIAN_FRONTEND=noninteractive apt-get install -yq  mysql-server && mysql_install_db && service mysql start

VOLUME ["/var/lib/mysql", "/var/log/mysql", "/var/run/mysqld"]

RUN chown -R mysql:mysql /var/lib/mysql && \
    service mysql start && \
    mysql -u root -pdocker -e "create database docker; GRANT ALL PRIVILEGES ON docker.* TO docker@localhost IDENTIFIED BY 'docker'" 

USER mysql

#ENTRYPOINT ["/usr/bin/mysqld_safe"]

