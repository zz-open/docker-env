#!/usr/bin/env bash

HOST_CODE_PATH=./
HOST_CODE_CONF_PATH=./config.yaml

REPOSITORY=zz-hello
APPLICATION_VERSION=v1.0.0
HARBOR_HOST=zz.harbor.com
HARBOR_PROJECT=zzimage
SOURCE_IMAGE=${REPOSITORY}:${APPLICATION_VERSION}
HARBOR_IMAGE=${HARBOR_HOST}/${HARBOR_PROJECT}/${REPOSITORY}:${APPLICATION_VERSION}


build(){
    cat ~/harbor.passwd | docker login -u admin --password-stdin zz.harbor.com && \
    sed -i "s/version:.*/version: \"${APPLICATION_VERSION}\"/g" ${HOST_CODE_CONF_PATH} && \
    docker build -t ${SOURCE_IMAGE} . && \
    docker tag ${SOURCE_IMAGE} ${HARBOR_IMAGE} && \
    docker push ${HARBOR_IMAGE}
}

build