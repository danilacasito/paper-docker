FROM danilacasito/ubuntu-jre:latest
MAINTAINER daniel danilacasito8@gmail.com

RUN apt-get -y update
RUN apt-get install -y tar
RUN apt-get install -y wget
RUN mkdir /server
RUN cd /server
