FROM base
MAINTAINER alex alex@decoded.co
USER root
RUN wget http://nodejs.org/dist/v0.12.0/node-v0.12.0.tar.gz
RUN tar -zxf node-v0.12.0.tar.gz
RUN cd /node-v0.12.0 && ./configure
RUN cd /node-v0.12.0 && make
RUN cd /node-v0.12.0 && make install
RUN mkdir /srv/app
RUN chmod -R 777 /srv/app
ADD ./build /build
RUN chmod 777 /build/nodesetup.sh
EXPOSE 8080
CMD /build/nodesetup.sh
