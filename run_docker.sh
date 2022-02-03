#!/bin/bash

WORKDIR="$PWD"/tensorrt
WORKDIR_VOLUME="$WORKDIR":"$HOME"/tensorrt

rocker --nvidia --x11 --user --privileged \
    --volume "$WORKDIR_VOLUME" -- \
    nvcr.io/nvidia/tensorrt:21.02-py3
