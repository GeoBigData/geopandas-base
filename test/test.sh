#!/usr/bin/env bash

VERSION=${1:-"latest"};

docker run -it --rm \
-v ${PWD}/data:/mnt/data \
-v ${PWD}/src:/mnt/src \
-v ${PWD}/results:/mnt/results \
-e IMAGE_VERSION=${VERSION} \
jonduckworthdg/geopandas-base:${VERSION} /mnt/src/test.sh
