FROM debian

MAINTAINER Victor Gazotti vtr.gomes@hotmail.com

LABEL Description="Starting web container with nginx"


RUN apt-get update && apt-get install -y nginx && \
 apt-get clean

ADD ./conf/default /etc/nginx/sites-available
ADD ./conf/test  /var/www/html/test

#VOLUME ["/etc/nginx/sites-enabled", "/etc/nginx/conf.d", "/var/log/nginx", "/var/www/html"]

#CMD ["nginx", "-g", "daemon off;"]

EXPOSE 80


