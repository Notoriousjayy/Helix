cmake_minimum_required(VERSION 3.10)

# Project name
project(Helix C)

# Set the C standard
set(CMAKE_C_STANDARD 99)

# Include directories
include_directories(include)

# Source files
set(SRC_FILES
    src/data_structures/array.c
    src/data_structures/arrayrep.c
)

# Main executable
add_executable(Helix ${SRC_FILES} src/main.c)

# Enable testing
enable_testing()

# Find CUnit
find_package(CUnit REQUIRED)

# Unit test executable
add_executable(test_array
    tests/test_array.c
    src/data_structures/array.c
    src/data_structures/arrayrep.c
)

# Link the CUnit library to the test executable
target_link_libraries(test_array PRIVATE ${CUNIT_LIBRARY})

# Register the test with CTest
add_test(NAME ArrayTests COMMAND test_array)

# Print debug information
message("CUnit library: ${CUNIT_LIBRARY}")
message("CUnit include directory: ${CUNIT_INCLUDE_DIR}")
