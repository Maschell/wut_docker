FROM wiiulegacy/core:0.1

MAINTAINER Maschell <maschell@gmx.de>

RUN git clone --recursive https://github.com/decaf-emu/wut

WORKDIR wut

RUN apt-get update && \
    apt-get upgrade -y && \
    apt-get install -y cmake zlib1g-dev gcc g++ build-essential --fix-missing

ENV WUT_ROOT=${DEVKITPRO}/wut    
    
RUN mkdir build && cd build && \
    cmake -DCMAKE_INSTALL_PREFIX=${WUT_ROOT} ../ && \
    make install
