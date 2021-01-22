cmake_minimum_required(VERSION 3.10)
project(Dynamic_Queue)

set(CMAKE_CXX_STANDARD 11)

add_executable(Dynamic_Queue main.cpp node.cpp node.h queue.cpp queue.h)