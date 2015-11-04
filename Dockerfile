FROM ubuntu:latest
MAINTAINER cedsoft@zestprod.com

RUN apt-get update && \
    apt-get install -y cron curl

ADD start.sh /start.sh
RUN chmod +x /start.sh
CMD /start.sh
