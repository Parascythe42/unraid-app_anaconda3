#!/bin/bash

DOCKERHUB_USER=muxelmann

BUILD_PLATFORMS=linux/arm64/v8,linux/amd64

# Make sure we can build for multiple architectures
docker buildx create --use desktop-linux

# Build the `latest` tag before special branches
docker buildx build \
    --file 00-default/dockerfile \
    --push \
    --platform ${BUILD_PLATFORMS} \
    --tag ${DOCKERHUB_USER}/anaconda3 \
    .

for directory in */ ; do
    tag=${directory%/}
    tag=${tag#[0-9]*\-}
    echo "Building: ${tag}"
    docker buildx build \
        --file ${directory}/dockerfile \
        --push \
        --platform ${BUILD_PLATFORMS} \
        --tag ${DOCKERHUB_USER}/anaconda3:${tag} \
        .
done
