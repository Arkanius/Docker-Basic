FROM debian

MAINTAINER Victor Gazotti <vtr.gomes@hotmail.com>

LABEL Description="Container running just php5-fpm"

RUN apt-get update && apt-get install php5-fpm -y && apt-get clean

VOLUME ["/var/www", "/etc/php5"]

ENTRYPOINT ["php5-fpm", "-F"]
