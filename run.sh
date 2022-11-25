#!/bin/bash

PROJECT_NAME=$1
CODE_PATH=$2 # Must be absolute path

docker run --name COMP371 --rm -v $CODE_PATH:/src/code -e DISPLAY=$DISPLAY -v /tmp/.X11-unix:/tmp/.X11-unix:rw comp371:W22 $PROJECT_NAME

