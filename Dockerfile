FROM centos

RUN yum install -y \
    centos-release-scl \
    nc \
    net-tools
RUN yum install -y \
    rh-nodejs10 \
    rh-nodejs10-npm

RUN echo ". /opt/rh/rh-nodejs10/enable" > "/etc/profile.d/rh-nodejs10.sh"
SHELL ["/bin/bash", "-lc"]
RUN npm install -g smee-client
