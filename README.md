# Helix Project

Helix is a dynamic array implementation written in C, inspired by the book *C Interfaces and Implementations*. The project provides a robust and flexible API for handling arrays with dynamic memory management, supporting resizing, copying, and element manipulation.

## Features

- **Dynamic Array**: Create arrays with adjustable lengths and types.
- **Safe Memory Management**: Allocate, resize, and free memory safely.
- **Type Agnostic**: Supports elements of any size (e.g., integers, floats, structs).
- **Resizing and Copying**: Dynamically resize arrays and create shallow copies.
- **Robust Error Checking**: Ensures safe access with bounds checking.

## File Structure


## Dependencies

This project requires the following tools:

- **C Compiler**: GCC, Clang, or equivalent.
- **CMake**: Version 3.10 or higher for building the project.

## Build Instructions

1. Clone the repository:

   ```bash
   git clone https://github.com/your-username/helix.git
   cd helix
   ```
2. Create a build directory and compile the project:
   ```bash
   mkdir build
   cd build
   cmake ..
   make
   ```
3. Run the sample program:
   ```bash
   ./Helix
   ```
### Key Points

1. **File Structure**: Highlights the organization of the project files for easy navigation.
2. **Build Instructions**: Provides a step-by-step guide for building the project using CMake.
3. **Example Usage**: Demonstrates how to use the dynamic array API with sample code and expected output.
4. **Contributing**: Encourages collaboration with clear instructions for contributions.
5. **License and Authors**: Adds attribution and licensing details.

### Example Usage
```c
#include <stdio.h>
#include "../include/data_structures/array.h"

int main() {
    // Create a new array with an initial length of 5, where each element is an integer (4 bytes).
    Array_T array = Array_new(5, sizeof(int));

    // Initialize array elements.
    for (int i = 0; i < Array_length(array); i++) {
        int value = i * 10; // Set values 0, 10, 20, 30, 40
        Array_put(array, i, &value);
    }

    // Print the initial elements.
    printf("Initial elements:\n");
    for (int i = 0; i < Array_length(array); i++) {
        int *value = (int *)Array_get(array, i);
        printf("array[%d] = %d\n", i, *value);
    }

    // Resize the array to hold 10 elements.
    Array_resize(array, 10);

    // Set values for the new elements.
    for (int i = 5; i < Array_length(array); i++) {
        int value = i * 10; // Set values 50, 60, 70, 80, 90
        Array_put(array, i, &value);
    }

    // Print elements after resizing.
    printf("\nElements after resizing to length 10:\n");
    for (int i = 0; i < Array_length(array); i++) {
        int *value = (int *)Array_get(array, i);
        printf("array[%d] = %d\n", i, *value);
    }

    // Create a copy of the array with length 7.
    Array_T array_copy = Array_copy(array, 7);

    // Print elements of the copied array.
    printf("\nElements in the copied array (length 7):\n");
    for (int i = 0; i < Array_length(array_copy); i++) {
        int *value = (int *)Array_get(array_copy, i);
        printf("array_copy[%d] = %d\n", i, *value);
    }

    // Free the arrays.
    Array_free(&array);
    Array_free(&array_copy);

    return 0;
}
```
Let me know if you'd like any adjustments or additional sections for the README!
