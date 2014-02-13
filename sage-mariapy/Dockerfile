# Container for Sage with MariaDB and Python.
#
#     http://www.sagemath.org/
#     https://www.mariadb.org/ 
#

FROM tylertreat/mariapy
MAINTAINER Tyler Treat <tyler.treat@webfilings.com>

RUN apt-get update

RUN apt-get install -y build-essential ca-certificates m4 curl
RUN curl -Lso /tmp/sage-6.1.1.tar.gz http://boxen.math.washington.edu/home/sagemath/sage-mirror/src/sage-6.1.1.tar.gz
RUN tar zxvf /tmp/sage-6.1.1.tar.gz
RUN cd sage-6.1.1 && make

# Warm up
RUN sage-6.1.1/sage -c 'quit()'

ENTRYPOINT sage-6.1.1/sage

