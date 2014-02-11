# Container for MariaDB with Python.
#
#     https://mariadb.org/
#

FROM tianon/mariadb

MAINTAINER Tyler Treat <tyler.treat@webfilings.com>

RUN apt-get update

# Install utilities
RUN apt-get install -y git

# Install Python tools
RUN apt-get install -y python python-dev python-distribute python-pip
RUN pip install --upgrade setuptools

