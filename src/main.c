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
