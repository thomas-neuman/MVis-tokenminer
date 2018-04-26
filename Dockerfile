FROM ubuntu:16.04

RUN apt-get -y update && \
    apt-get -y install software-properties-common

RUN add-apt-repository -y ppa:ethereum/ethereum && \
    apt-get -y update

RUN apt-get -y install \
        git \
        cmake \
        libcryptopp-dev \
        libleveldb-dev \
        libjsoncpp-dev \
        libjsonrpccpp-dev \
        libboost-all-dev \
        libgmp-dev \
        libreadline-dev \
        libcurl4-gnutls-dev \
        ocl-icd-libopencl1 \
        opencl-headers \
        mesa-common-dev \
        libmicrohttpd-dev \
        build-essential

RUN mkdir -p /usr/src/MVis-tokenminer
ADD ./* /usr/src/MVis-tokenminer
