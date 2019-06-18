FROM ubuntu:latest

MAINTAINER Julio Perez <perezduranjulio@gmail.com>

# instalar dependencias para compilar hadoop
RUN apt-get update &&\
    apt-get install -y wget \
                       openjdk-11-jdk \
                       libprotobuf-dev \
                       protobuf-compiler \
                       maven \
                       cmake \
                       build-essential \
                       pkg-config \
                       libssl-dev \
                       zlib1g-dev \
                       gcc \
                       automake \
                       autoconf \
                       make

# configurar variable de ambiente de java
ENV JAVA_HOME=/usr/lib/jvm/java-11-openjdk-amd64 

COPY compile.sh /root/compile.sh

RUN chmod +x /root/compile.sh
