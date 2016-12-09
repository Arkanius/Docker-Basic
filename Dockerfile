FROM debian

MAINTAINER Victor Gazotti <vtr.gomes@hotmail.com>

LABEL Description="Starting web container with php5-fpm"


RUN apt-get update && \
 apt-get install php5-fpm -y && \
 apt-get clean


#VOLUME ["/etc/nginx/sites-enabled", "/etc/nginx/conf.d", "/var/log/nginx", "/var/www/html"]

#CMD ["nginx", "-g", "daemon off;"]


