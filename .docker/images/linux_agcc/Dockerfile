# variable environnement
ARG VALUE_GCC_VERSION
ARG DEF_GCC_VERSION=${VALUE_GCC_VERSION:-"latest"}

FROM gcc:${DEF_GCC_VERSION}

VOLUME "/home/project"
WORKDIR "/home/project"

## APT
RUN  apt-get update &&\ 
     apt-get install -y --no-install-recommends apt-utils

## NASM
RUN  apt-get install -y --no-install-recommends nasm
