#!/bin/bash

PROJECT_NAME=$1
CODE_PATH=$2 # Must be absolute path

# Breaking down the docker command:
#
#    docker run \
#        --name COMP371 \ # Name of the container
#        --rm \ # Delete container after exiting
#        -v $CODE_PATH:/src/code \ # Binds CODE_PATH to /src/code inside the container
#        -v /tmp/.X11-unix:/tmp/.X11-unix:rw \ # Required for X Server use on Unix/Linux
#        -e DISPLAY=$DISPLAY \ # Required for X Server use on Unix/Linux
#        comp371:W22 \ # Name of the image (main positional argument for docker run)
#        $PROJECT_NAME

docker run --name COMP371 \
    --rm \
    -v $CODE_PATH:/src/code \
    -v /tmp/.X11-unix:/tmp/.X11-unix:rw \
    -e DISPLAY=$DISPLAY \
    comp371:W22 \
    $PROJECT_NAME

