FROM ubuntu:14.04
MAINTAINER rob@robtimmer.com

EXPOSE 3000
VOLUME ["/opt/mailtrain"]

RUN apt-get update
RUN apt-get -q -y install curl software-properties-common

ADD https://raw.githubusercontent.com/robtimmer/docker-mailtrain/master/install.sh /
RUN chmod +x /install.sh
RUN /install.sh

ADD https://raw.githubusercontent.com/robtimmer/docker-mailtrain/master/entrypoint.sh /
RUN chmod +x /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]