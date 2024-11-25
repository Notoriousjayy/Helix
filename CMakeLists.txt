cmake_minimum_required(VERSION 3.0)
project(Helix C)

# Include directories
include_directories(include)

# Add source files
set(SRC_FILES
    src/data_structures/array.c
    src/data_structures/arrayrep.c
    src/main.c
)

# Create the main executable
add_executable(Helix ${SRC_FILES})

# Find CUnit
find_package(CUnit REQUIRED)
include_directories(${CUNIT_INCLUDE_DIR})

# Add test executable
add_executable(test_array tests/test_array.c src/data_structures/array.c src/data_structures/arrayrep.c)

# Link the CUnit library
target_link_libraries(test_array ${CUNIT_LIBRARY})

# Enable testing
enable_testing()

# Add tests
add_test(NAME ArrayTests COMMAND test_array)
