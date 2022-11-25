cmake_minimum_required(VERSION 3.11)

set(PROJECT_NAME project_name CACHE STRING "Project Name")
set(SOURCE_DIR /src/code CACHE PATH "Path to source files...")

project(${PROJECT_NAME})

find_package(OpenGL REQUIRED COMPONENTS OpenGL)
find_package(GLEW REQUIRED)
find_package(glfw3 REQUIRED)
find_package(glm REQUIRED)

file(GLOB SRC ${SOURCE_DIR}/*.cpp)

add_executable(${PROJECT_NAME} ${SRC})

target_link_libraries(${PROJECT_NAME} OpenGL::GL GLEW glfw glm::glm)

