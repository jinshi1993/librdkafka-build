FROM docker.io/centos:centos7.2.1511

COPY resource/* /etc/yum.repos.d/ 

RUN yum -y install git gcc gcc-c++ make cyrus-sasl-devel \
    && cd / && git clone -b v1.7.0 https://github.com/edenhill/librdkafka.git \
    && cd librdkafka && mkdir build && ./configure --install-deps --prefix=/librdkafka/build \
    && make -j4 && make install
