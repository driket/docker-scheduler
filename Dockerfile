#FROM ubuntu:latest
FROM debian:wheezy
MAINTAINER cedsoft@zestprod.com

ADD start.sh /start.sh
RUN chmod +x /start.sh
CMD /start.sh
