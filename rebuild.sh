#!/usr/bin/env bash
# Delete the COMP371 container and image and rebuild

./delete_container.sh

docker rmi comp371:W22 # Delete image

./build_docker.sh
