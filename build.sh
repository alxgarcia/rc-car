#/usr/bin/env bash

set -e # exit on first error

DOCKER_TAG=rust4rpi

docker build . -t ${DOCKER_TAG}

docker run --rm \
    -v $(pwd):/home/rc-car \
    -v ${HOME}/.cargo/registry:/usr/local/cargo/registry \
    ${DOCKER_TAG}
