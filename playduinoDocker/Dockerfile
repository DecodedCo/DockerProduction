FROM base
MAINTAINER alex alex@decoded.co
USER root
ADD ./build /build
RUN chmod 777 /build/*
RUN /build/customInstall.sh
#USER amlwwalker
RUN /build/setup.sh
RUN /build/installgo.sh
RUN . ~/.bash_profile
