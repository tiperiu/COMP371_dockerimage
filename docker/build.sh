#!/bin/bash

PROJECT_NAME=$1
SOURCE_PATH=/src/code

# Build
cmake -S . -B /build -DPROJECT_NAME=$PROJECT_NAME -DSOURCE_PATH=$SOURCE_PATH
cmake --build /build

# Run
/build/$PROJECT_NAME
