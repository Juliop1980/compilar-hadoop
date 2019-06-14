FROM ubuntu:latest

MAINTAINER juliop1980 <perezduranjulio@gmail.com>

# instalar dependencias para hadoop
RUN apt-get update && \
    sudo apt-get install -y wget \
                       openjdk-12-jdk \
                       libprotobuf-dev \
                       protobuf-compiler \
                       maven \
                       cmake \
                       build-essential \
                       pkg-config \
                       libssl-dev \
                       zlib1g-dev \
                       llvm-gcc \
                       automake \
                       autoconf \
                       make

COPY compile.sh /root/compile.sh

RUN chmod +x /root/compile.sh
