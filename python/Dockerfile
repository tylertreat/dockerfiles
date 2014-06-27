# Container for running Python applications.

FROM ubuntu:12.04

MAINTAINER Tyler Treat <tyler.treat@webfilings.com>

RUN apt-get update

# Install Python tools
RUN apt-get install -y python python-dev python-distribute python-pip
RUN pip install --upgrade pip
RUN pip install --upgrade setuptools
RUN pip install virtualenv
RUN pip install virtualenvwrapper

