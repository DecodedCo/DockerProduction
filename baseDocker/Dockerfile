FROM centos:7
MAINTAINER alex alex@decoded.co
#RUN yum update -y
RUN yum install -y git
RUN useradd amlwwalker
ADD ./build /build
RUN chmod 777 /build/*
RUN ls -l /build
RUN /build/install.sh
