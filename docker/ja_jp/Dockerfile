FROM centos:7

# system update
RUN yum -y upgrade && yum -y update && yum clean all
RUN yum -y install \
        epel-release \
        sudo \
        shadow-utils \
        procps \
        wget \
        openssh-server \
        openssh-clients \
        which \
        iproute \
        e2fsprogs \
        git
RUN yum -y install fish