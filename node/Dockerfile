FROM playduino
MAINTAINER alex alex@decoded.co
USER root
RUN wget http://nodejs.org/dist/v0.12.0/node-v0.12.0.tar.gz
RUN tar -zxf node-v0.12.0.tar.gz
RUN cd /node-v0.12.0 && ./configure
RUN cd /node-v0.12.0 && make
RUN cd /node-v0.12.0 && make install
#COPY ./src /src
#RUN cd /src; npm install
EXPOSE 8080
CMD ["cd /srv/app", "npm install"]
CMD ["node", "/srv/app/app.js"]
