FROM java:8-jre

MAINTAINER delivery-engineering@netflix.com

COPY ./igor-web/build/distributions/*.deb workdir/packages/

WORKDIR workdir

RUN dpkg -i ./packages/*.deb

EXPOSE 8088

CMD ["/opt/igor/bin/igor"]
