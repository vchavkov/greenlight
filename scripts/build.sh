#!/bin/bash

source _config.sh

docker build \
--rm -t ${IMAGE_TAG} . \
--no-cache

docker images -q ${IMAGE_TAG} > .docker_image

# docker push ${IMAGE_TAG}
