#!/usr/bin/env bash

docker run --privileged --rm -v /dev:/dev:ro -v "$PWD":/runner -w /runner \
  -e ALPINE_BRANCH=latest-stable \
  -e ALPINE_MIRROR="http://alpine.42.fr" \
  -e ARCH=aarch64 \
  runner ./make-image

