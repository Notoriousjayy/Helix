cmake_minimum_required(VERSION 3.25)
project(Helix C)

set(CMAKE_C_STANDARD 11)

add_executable(Helix src/main.c src/data_structures/array.c include/data_structures/array.h include/data_structures/arrayrep.h)
