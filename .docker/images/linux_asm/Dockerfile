ARG VALUE_GCC_VERSION
ARG DEF_GCC_VERSION=${VALUE_GCC_VERSION:-"14.1.0"}

FROM gcc:${DEF_GCC_VERSION}

ARG GCC_FOLDER_PROJECT
ENV GCC_FOLDER_PROJECT=${GCC_FOLDER_PROJECT:-"/home/project/"}
ENV GCC_FOLDER_LOG="/var/log/docker/gcc/"
ENV GCC_FOLDER_TMP="/var/tmp/docker/gcc/"
ENV GCC_FOLDER_INIT="/var/docker/gcc/"
ENV GCC_FOLDER_INIT_DATA="/docker-entrypoint-initdata.d/"

RUN mkdir -p ${GCC_FOLDER_PROJECT}
RUN mkdir -p ${GCC_FOLDER_LOG}
RUN mkdir -p ${GCC_FOLDER_TMP}
RUN mkdir -p ${GCC_FOLDER_INIT}
RUN mkdir -p ${GCC_FOLDER_INIT_DATA}

## APT
RUN apt-get update
RUN apt-get install -y --no-install-recommends apt-utils

## NASM
RUN  apt-get install -y --no-install-recommends nasm

#del list
RUN rm -rf /var/lib/apt/lists/*

COPY updateProject.sh ${GCC_FOLDER_INIT}
RUN chmod +x ${GCC_FOLDER_INIT}/updateProject.sh

COPY docker-autobash-entrypoint.sh /usr/local/bin/
RUN chmod +x /usr/local/bin/docker-autobash-entrypoint.sh

COPY startautobash /etc/init.d/
RUN chmod +x /etc/init.d/startautobash
RUN update-rc.d startautobash defaults

WORKDIR ${GCC_FOLDER_PROJECT}

ENTRYPOINT ["docker-autobash-entrypoint.sh"]

CMD /bin/bash ; sleep infinity
