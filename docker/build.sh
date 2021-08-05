#!/bin/bash

BUILD_PATH="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
echo $BUILD_PATH

IMAGE_NAME=librdkafka
CURRENT_UNIT_VERSION=build

docker_build()
{
    BUILD_BIN="docker build -t $IMAGE_NAME:${CURRENT_UNIT_VERSION} -f ${BUILD_PATH}/Dockerfile ${BUILD_PATH}"
    ${BUILD_BIN} || { echo "${BUILD_BIN} failed"; exit 1; }
}

docker_build
