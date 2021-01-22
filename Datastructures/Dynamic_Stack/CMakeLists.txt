cmake_minimum_required(VERSION 3.10)
project(Dynamic_Stack)

set(CMAKE_CXX_STANDARD 11)

add_executable(Dynamic_Stack main.cpp node.cpp node.h stack.h stack.cpp)