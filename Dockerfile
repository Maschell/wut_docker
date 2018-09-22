FROM wiiulegacy/core:0.1

MAINTAINER Maschell <maschell@gmx.de>

RUN apt-get update && \
	apt-get install -y --no-install-recommends cmake --fix-missing

ENV WUT_ROOT=${DEVKITPRO}/wut

RUN wget https://github.com/decaf-emu/wut/releases/download/1.0.0-beta4/wut.linux64.7z && \
	7z x -y $(ls | grep "linux") -o${WUT_ROOT} && \
	rm wut.linux64.7z
