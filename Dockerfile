FROM debian:jessie

ENV LANG C.UTF-8
ENV LC_ALL C.UTF-8

RUN apt-get update \
    && apt-get install -y vim git curl wget unzip tar gcc g++ bzip2

RUN echo "LC_ALL=\"en_US.UTF-8\"" >> /etc/default/locale

ENV ANACONDA_VERSION 5.0.0.1

RUN curl -o ~/anaconda3.sh https://repo.continuum.io/archive/Anaconda3-${ANACONDA_VERSION}-Linux-x86_64.sh

RUN /bin/bash ~/anaconda3.sh -b -p /opt/conda3 \
    && rm ~/anaconda3.sh

ENV PATH /opt/conda3/bin:$PATH
