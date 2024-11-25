# Minimum required version
cmake_minimum_required(VERSION 3.10)

# Project name and language
project(Helix C)

# Set the C standard
set(CMAKE_C_STANDARD 99)

# Include directories
include_directories(include)

# Source files
set(SRC_FILES
    src/data_structures/array.c
)

# Main executable
add_executable(Helix ${SRC_FILES} src/main.c)

# Enable testing
enable_testing()

# Add custom CMake module path for FindCUnit.cmake
list(APPEND CMAKE_MODULE_PATH "${CMAKE_CURRENT_SOURCE_DIR}/cmake/Modules")

# Find CUnit
find_package(CUnit REQUIRED)

# Test executable
add_executable(test_array
    test/test_array.c
    src/data_structures/array.c
)

# Link CUnit library to the test executable
target_link_libraries(test_array PRIVATE ${CUNIT_LIBRARY})

# Add test to CTest
add_test(NAME ArrayTests COMMAND test_array)

# Debug messages
message(STATUS "CUnit library: ${CUNIT_LIBRARY}")
message(STATUS "CUnit include directory: ${CUNIT_INCLUDE_DIR}")
