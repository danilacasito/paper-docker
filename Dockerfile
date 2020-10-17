FROM danilacasito/ubuntu-jre:20.04
MAINTAINER daniel danilacasito8@gmail.com

RUN apt-get -y update
RUN apt-get install -y wget unzip tar
RUN mkdir /server
RUN cd /server
RUN wget https://papermc.io/api/v1/paper/1.16.3/238/download
RUN mv download server.jar
RUN cd /
RUN wget -o /init.sh https://github.com/danilacasito/paper-docker/raw/latest/init.sh 
RUN wget -o /start.zip https://github.com/danilacasito/paper-docker/raw/latest/start.zip
RUN mkdir /start
RUN unzip /start.zip -d /start
RUN chmod 777 /init.sh
CMD /init.sh
