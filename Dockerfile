FROM debian:8

# the basics
RUN apt-get -y update && \
    DEBIAN_FRONTEND=noninteractive apt-get -yq install \
    vim

# install all the dependencies from the rcheckserver meta package
ADD ./rcheckserver_2.15-54_amd64.deb /
# the dpkg will fail as the dependencies will not be resolved
# this will be fixed using the apt-get
RUN dpkg -i /rcheckserver_2.15-54_amd64.deb; \
    DEBIAN_FRONTEND=noninteractive apt-get install -fyq

# Debian 8 comes with old R, we need to upgrade to 3.4
RUN echo "deb http://cloud.r-project.org/bin/linux/debian jessie-cran34/" >> /etc/apt/sources.list && \
    DEBIAN_FRONTEND=noninteractive apt-get -yq update && \
    DEBIAN_FRONTEND=noninteractive apt-get -yq --force-yes upgrade

LABEL maintainer "krikava@gmail.com"

CMD ["R"]
