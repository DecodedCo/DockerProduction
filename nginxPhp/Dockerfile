FROM playduino
MAINTAINER alex alex@decoded.co
USER root
ADD ./build /build
RUN mkdir /srv/ssl/
RUN chown amlwwalker:amlwwalker /srv/ssl
RUN chmod 777 /build/*
RUN /build/customInstall.sh
RUN /build/setupSupervisord.sh
RUN /build/setupPHP.sh
RUN /build/testSite.sh
EXPOSE 80
CMD ["/usr/bin/supervisord"]
