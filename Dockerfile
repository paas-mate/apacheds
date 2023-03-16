FROM shoothzj/base:jdk17

WORKDIR /opt

RUN wget https://dlcdn.apache.org//directory/apacheds/dist/2.0.0.AM26/apacheds-2.0.0.AM26.tar.gz  && \
mkdir -p /opt/apacheds && \
tar -xf apacheds-2.0.0.AM26.tar.gz -C /opt/apacheds --strip-components 1 && \
rm -rf apacheds-2.0.0.AM26.tar.gz

WORKDIR /opt/apacheds
