FROM centos:centos7

MAINTAINER bharath@hooq.tv

RUN yum -y update; yum clean all
RUN yum -y install epel-release; yum clean all
RUN yum -y install nodejs npm; yum clean all

COPY .  /src

RUN cd /src; npm install
EXPOSE 8080

CMD cd /src && node ./app.js