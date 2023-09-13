FROM gcc:9.3

VOLUME "/home/project"
WORKDIR "/home/project"

## APT
RUN  apt-get update &&\ 
     apt-get install -y --no-install-recommends apt-utils

## NASM
RUN  apt-get install -y --no-install-recommends nasm

## CMAKE
RUN apt install -y --no-install-recommends cmake
