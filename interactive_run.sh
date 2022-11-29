#!/usr/bin/env bash

CODE_PATH=$1 # Must be absolute path

# Breaking down the docker command:
#
#    docker run \
#        --name COMP371 \ # Name of the container
#        --rm \ # Delete container after exiting
#        -v $CODE_PATH:/src/code \ # Binds CODE_PATH to /src/code inside the container
#        -v /tmp/.X11-unix:/tmp/.X11-unix:rw \ # Required for X Server use on Unix/Linux
#        -e DISPLAY=$DISPLAY \ # Required for X Server use on Unix/Linux
#        --entrypoint /bin/bash  # Enter to bash terminal
#        -it \ # Use interactive and TTY terminal
#        comp371:W22 # Name of the image (main positional argument for docker run)

docker run --name COMP371 \
    --rm \
    -v $CODE_PATH:/src/code \
    -v /tmp/.X11-unix:/tmp/.X11-unix:rw \
    -e DISPLAY=$DISPLAY \
    --entrypoint /bin/bash \
    -it \
    comp371:W22

