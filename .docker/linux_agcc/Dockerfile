FROM gcc:latest

VOLUME "/home/project"
WORKDIR "/home/project"

## APT
RUN  apt-get update &&\ 
     apt-get install -y --no-install-recommends apt-utils

## NASM
RUN  apt-get install -y --no-install-recommends nasm
