// tests/test_array.c

#include <CUnit/CUnit.h>
#include <CUnit/Basic.h>
#include <stdlib.h>
#include "../include/data_structures/array.h"

void test_array_new(void) {
    int length = 10;
    int size = sizeof(int);
    Array_T array = Array_new(length, size);
    CU_ASSERT_PTR_NOT_NULL(array);
    CU_ASSERT_EQUAL(Array_length(array), length);
    CU_ASSERT_EQUAL(Array_size(array), size);
    Array_free(&array);
}

void test_array_get_put(void) {
    int length = 5;
    int size = sizeof(int);
    Array_T array = Array_new(length, size);

    for (int i = 0; i < length; i++) {
        int value = i * 10;
        Array_put(array, i, &value);
    }

    for (int i = 0; i < length; i++) {
        int *value = Array_get(array, i);
        CU_ASSERT_EQUAL(*value, i * 10);
    }

    Array_free(&array);
}

void test_array_resize(void) {
    int length = 3;
    int size = sizeof(int);
    Array_T array = Array_new(length, size);

    int value = 42;
    Array_put(array, 0, &value);

    Array_resize(array, 5);
    CU_ASSERT_EQUAL(Array_length(array), 5);

    int *retrieved = Array_get(array, 0);
    CU_ASSERT_EQUAL(*retrieved, 42);

    Array_free(&array);
}

void test_array_copy(void) {
    int length = 4;
    int size = sizeof(int);
    Array_T array = Array_new(length, size);

    for (int i = 0; i < length; i++) {
        int value = i + 1;
        Array_put(array, i, &value);
    }

    Array_T copy = Array_copy(array, length);
    CU_ASSERT_PTR_NOT_NULL(copy);

    for (int i = 0; i < length; i++) {
        int *original_value = Array_get(array, i);
        int *copy_value = Array_get(copy, i);
        CU_ASSERT_EQUAL(*original_value, *copy_value);
    }

    Array_free(&array);
    Array_free(&copy);
}

int main() {
    CU_pSuite pSuite = NULL;

    // Initialize the CUnit test registry
    if (CUE_SUCCESS != CU_initialize_registry())
        return CU_get_error();

    // Add a suite to the registry
    pSuite = CU_add_suite("Array_T Tests", NULL, NULL);
    if (NULL == pSuite) {
        CU_cleanup_registry();
        return CU_get_error();
    }

    // Add the tests to the suite
    if (
        (NULL == CU_add_test(pSuite, "test of Array_new()", test_array_new)) ||
        (NULL == CU_add_test(pSuite, "test of Array_get() and Array_put()", test_array_get_put)) ||
        (NULL == CU_add_test(pSuite, "test of Array_resize()", test_array_resize)) ||
        (NULL == CU_add_test(pSuite, "test of Array_copy()", test_array_copy))
    ) {
        CU_cleanup_registry();
        return CU_get_error();
    }

    // Run all tests using the basic interface
    CU_basic_set_mode(CU_BRM_VERBOSE);
    CU_basic_run_tests();
    CU_cleanup_registry();
    return CU_get_error();
}
