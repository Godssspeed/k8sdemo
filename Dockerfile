#Getting base image
FROM centos:centos7

LABEL MAINTAINER=will.young93@gmail.com

RUN yum -y update; yum clean all
RUN yum -y install epel-release; yum clean all
RUN yum -y install nodejs npm; yum clean all
#copy source code
COPY . /src

#Install app and dependencies
RUN cd /src; npm install

#Document the port the app listens on
EXPOSE 8080


#Run this command (starts the app) when the container starts
CMD cd /src && node index.js