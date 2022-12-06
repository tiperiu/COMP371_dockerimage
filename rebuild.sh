#!/usr/bin/env bash

docker rm comp371
docker rmi comp371:W22

docker build . -f Dockerfile.comp371 -t comp371:W22
