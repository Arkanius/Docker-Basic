FROM debian

MAINTAINER Victor Gazotti <vtr.gomes@hotmail.com>

LABEL Description="Container with MySql service"

EXPOSE 3306

ENV MYSQL_DB test
ENV MYSQL_USER root
ENV MYSQL_PASS ""

RUN apt-get update && apt-get install -yq  mysql-server

ENTRYPOINT ["/usr/bin/mysqld_safe"]

