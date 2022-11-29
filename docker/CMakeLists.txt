cmake_minimum_required(VERSION 3.11)

set(PROJECT_NAME project_name CACHE STRING "Project Name")
set(SOURCE_PATH /src/code CACHE PATH "Path to source files...")

project(${PROJECT_NAME})

find_package(OpenGL REQUIRED COMPONENTS OpenGL)
find_package(GLEW REQUIRED)
find_package(glfw3 REQUIRED)
find_package(glm REQUIRED)

set(LIBRARIES
    OpenGL::GL
    OpenGL::GLU
    GLEW
    glfw
    glm::glm
)

file(GLOB_RECURSE SRC LIST_DIRECTORIES false ${SOURCE_PATH}/*.cpp )

message(STATUS "LIST OF SOURCEFILES")
string(REPLACE ";" "\n" SOURCE_LIST "${SRC}")
message(${SOURCE_LIST})

add_executable(${PROJECT_NAME} ${SRC})

target_link_libraries(${PROJECT_NAME} ${LIBRARIES})

