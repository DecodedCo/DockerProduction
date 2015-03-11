FROM playduino
MAINTAINER alex alex@decoded.co
USER root
ADD ./build /build
RUN mkdir /srv/ssl/
RUN mkdir /srv/phpapplications/
RUN chown -R amlwwalker:amlwwalker /srv/ssl
RUN chown -R amlwwalker:amlwwalker /srv/phpapplications
RUN chmod -R 777 /srv/ssl
RUN chmod -R 777 /srv/phpapplications
RUN chmod 777 /build/*
RUN /build/customInstall.sh
RUN /build/setupSupervisord.sh
RUN /build/setupPHP.sh
RUN /build/testSite.sh
EXPOSE 80
CMD ["/usr/bin/supervisord"]
