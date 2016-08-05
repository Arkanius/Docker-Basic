FROM debian

MAINTAINER Victor Gazotti <vtr.gomes@hotmail.com>

LABEL Description="Container with MySql service"

EXPOSE 3306

ENV MYSQL_USER=root \
    MYSQL_DATA_DIR=/var/lib/mysql \
    MYSQL_LOG_DIR=/var/log/mysql

RUN apt-get update && DEBIAN_FRONTEND=noninteractive apt-get install -yq  mysql-server && mysql_install_db && service mysql start

USER mysql


VOLUME ["/var/lib/mysql", "/var/log/mysql", "/var/run/mysqld"]


#RUN mysql -u root -pdocker -e "create database docker; GRANT ALL PRIVILEGES ON docker.* TO docker@localhost IDENTIFIED BY 'docker'" 


#ENTRYPOINT ["/usr/bin/mysqld_safe"]

