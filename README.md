# Student Docker Image

`build_docker.sh`: Builds the docker image
`run.sh`: Runs the docker container

## Inside image

`docker/CMakeLists.txt`: basic CMakeLists for building an OpenGL+GLFW application
`docker/build.sh`: runs cmake and and takes one argument for the Project name

## To run

`run.sh` will attach a bind the path containing  to an docker path at `/src/code`
which serves as the path to the source code and then use the CMakeLists.txt to
build the project.

The code path can be a symlink.

## Example

```
# Build
./build_docker.sh

# Run
./run.sh capsule1 $PWD/COMP371_all/Lab_capsules/capsule1/code
```

## TODO

* Multisource examples

