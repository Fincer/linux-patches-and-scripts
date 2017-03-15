cmake_minimum_required(VERSION 3.0.0)
project(xclipshow)
find_package(Qt5Widgets)
set(CMAKE_AUTOMOC ON)
set(CMAKE_INCLUDE_CURRENT_DIR ON)

set(SRC
    xclipshow.cpp)

add_definitions(-std=c++11)
add_executable(xclipshow ${SRC})
qt5_use_modules(xclipshow Widgets Core)