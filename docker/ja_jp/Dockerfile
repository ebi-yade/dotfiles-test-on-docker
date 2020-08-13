FROM centos:7

# update git for CentOS 7
RUN yum install -y https://repo.ius.io/ius-release-el7.rpm && \
    yum -y remove git* && \
    yum-config-manager --disable ius && \
    yum -y install git224 --enablerepo=ius

# install essential packages
RUN yum -y install \
        epel-release \
        sudo \
        shadow-utils \
        procps \
        wget \
        make \
        openssh-server \
        openssh-clients \
        which \
        iproute \
        e2fsprogs

# install shell
RUN yum -y install zsh fish

RUN yum -y upgrade && yum clean all

# set locale
RUN localedef -f UTF-8 -i ja_JP ja_JP.UTF-8
ENV LANG="ja_JP.UTF-8" \
    LANGUAGE="ja_JP:ja" \
    LC_ALL="ja_JP.UTF-8"