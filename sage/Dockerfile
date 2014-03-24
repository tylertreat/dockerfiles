# Container for Sage.
#
#     http://www.sagemath.org/
#

FROM ubuntu
MAINTAINER Tyler Treat <tyler.treat@webfilings.com>

RUN apt-get update

RUN apt-get install -y build-essential ca-certificates m4 curl
RUN curl -Lso /tmp/sage-6.1.1.tar.gz http://boxen.math.washington.edu/home/sagemath/sage-mirror/src/sage-6.1.1.tar.gz
RUN tar zxvf /tmp/sage-6.1.1.tar.gz
RUN cd sage-6.1.1 && make

RUN ln -s /sage-6.1.1/sage /usr/local/bin/sage

# Warm up
RUN sage -c 'quit()'

ENTRYPOINT sage

