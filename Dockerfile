FROM r-base:3.5.0

RUN apt-get -y update && \
    DEBIAN_FRONTEND=noninteractive apt-get -yq install \
    cloc \
    curl \
    parallel \
    vim \
    wget

# install all the dependencies from the rcheckserver meta package
# from: http://statmath.wu.ac.at/AASC/debian/binary-amd64/rcheckserver_2.15.86_amd64.deb
ADD ./rcheckserver_2.15.86_amd64.deb /tmp
# the dpkg will fail as the dependencies will not be resolved
# this will be fixed using the apt-get
RUN dpkg -i /tmp/rcheckserver_2.15.86_amd64.deb; \
    DEBIAN_FRONTEND=noninteractive apt-get install -fyq

LABEL maintainer "krikava@gmail.com"

CMD ["R"]
