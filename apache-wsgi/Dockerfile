# Container for Apache with mod_wsgi.
#
#     http://httpd.apache.org/
#     http://code.google.com/p/modwsgi/
#


FROM ubuntu:12.04
MAINTAINER Tyler Treat <tyler.treat@webfilings.com>

RUN apt-get update

RUN apt-get install -y apache2
RUN apt-get install -y libapache2-mod-wsgi

ENV APACHE_RUN_USER    www-data
ENV APACHE_RUN_GROUP   www-data
ENV APACHE_PID_FILE    /var/run/apache2.pid
ENV APACHE_RUN_DIR     /var/run/apache2
ENV APACHE_LOCK_DIR    /var/lock/apache2
ENV APACHE_LOG_DIR     /var/log/apache2
ENV LANG               C

ADD start.sh start.sh

ADD application/application.wsgi /var/www/application/application.wsgi
ADD app.vhost app.vhost

EXPOSE 80
CMD ["/bin/bash", "start.sh"]


