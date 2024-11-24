//
// Created by jorda on 11/14/2024.
//

#include "../../include/data_structures/array.h"
#include "../../include/data_structures/arrayrep.h"
#include <assert.h>
#include <stdlib.h>
#include <string.h>


#define T Array_T

T Array_new(int length, int size) {
    assert(length >= 0);
    assert(size > 0);
    T array = malloc(sizeof(*array));
    assert(array);
    ArrayRep_init(array, length, size, length > 0 ? calloc(length, size) : NULL);
    return array;
}

void Array_free(T *array) {
    assert(array && *array);
    free((*array)->array);
    free(*array);
    *array = NULL;
}

int Array_length(T array) {
    assert(array);
    return array->length;
}

int Array_size(T array) {
    assert(array);
    return array->size;
}

void *Array_get(T array, int i) {
    assert(array);
    assert(i >= 0 && i < array->length);
    return array->array + i * array->size;
}

void Array_put(T array, int i, void *elem) {
    assert(array);
    assert(i >= 0 && i < array->length);
    assert(elem);
    memcpy(array->array + i * array->size, elem, array->size);
}

void Array_resize(T array, int length) {
    assert(array);
    assert(length >= 0);
    if (length == 0) {
        free(array->array);
        array->array = NULL;
    } else if (array->length == 0) {
        array->array = malloc(length * array->size);
        memset(array->array, 0, length * array->size);
    } else {
        array->array = realloc(array->array, length * array->size);
        if (length > array->length) {
            memset(array->array + array->length * array->size, 0, (length - array->length) * array->size);
        }
    }
    array->length = length;
}

T Array_copy(T array, int length) {
    assert(array);
    assert(length >= 0);
    T copy = Array_new(length, array->size);
    int n = length < array->length ? length : array->length;
    memcpy(copy->array, array->array, n * array->size);
    return copy;
}

void ArrayRep_init(T array, int length, int size, void *ary) {
    assert(array);
    assert(length >= 0);
    assert(size > 0);
    array->length = length;
    array->size = size;
    array->array = ary;
}
