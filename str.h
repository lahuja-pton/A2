#ifndef STR_H
#define STR_H

#include <stddef.h>
#include <assert.h>

size_t Str_getLength(const char* str);

char* Str_copy(char* dest, const char* src);

char* Str_concat(char* dest, const char* src);

int Str_compare(const char* lhs, const char* rhs);

char* Str_search(const char* str, const char* substr);

#endif