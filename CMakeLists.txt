cmake_minimum_required(VERSION 3.25)
project(Helix C)

set(CMAKE_C_STANDARD 11)

# Define the executable
add_executable(Helix src/main.c src/data_structures/array.c include/data_structures/array.h include/data_structures/arrayrep.h)

# Specify installation rules
install(TARGETS Helix DESTINATION bin)
install(DIRECTORY include/ DESTINATION include FILES_MATCHING PATTERN "*.h")
