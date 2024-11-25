# Minimum CMake version
cmake_minimum_required(VERSION 3.10)

# Project name and language
project(Helix C)

# Set C standard
set(CMAKE_C_STANDARD 99)

# Include directories
include_directories(include)

# Source files
set(SRC_FILES
    src/data_structures/array.c
    src/data_structures/arrayrep.c
)

# Create the main executable
add_executable(Helix ${SRC_FILES} src/main.c)

# Enable testing
enable_testing()

# Add custom module path for FindCUnit.cmake
list(APPEND CMAKE_MODULE_PATH "${CMAKE_CURRENT_SOURCE_DIR}/cmake/Modules")

# Find CUnit package
find_package(CUnit REQUIRED)

# Create a test executable
add_executable(test_array
    tests/test_array.c
    src/data_structures/array.c
    src/data_structures/arrayrep.c
)

# Link the test executable with the CUnit library
target_link_libraries(test_array PRIVATE ${CUNIT_LIBRARY})

# Register the test with CTest
add_test(NAME ArrayTests COMMAND test_array)

# Debug information
message(STATUS "CUnit library: ${CUNIT_LIBRARY}")
message(STATUS "CUnit include directory: ${CUNIT_INCLUDE_DIR}")
