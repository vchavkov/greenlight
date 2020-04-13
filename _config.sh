#!/bin/bash

IMAGE_NAME="$(basename `pwd`)";
IMAGE_VERSION="0.0.1"
# IMAGE_TAG="docker.assistance.bg:5000/assistance/${IMAGE_NAME}:${IMAGE_VERSION}"
IMAGE_TAG="${IMAGE_NAME}:${IMAGE_VERSION}"

# detect OS
unameOut="$(uname -s)"
case "${unameOut}" in
    Linux*)     SED_CMD=sed;;
    Darwin*)    SED_CMD=gsed;;
    CYGWIN*)    SED_CMD=sed;;
    MINGW*)     SED_CMD=sed;;
    *)          SED_CMD=sed;;
esac
