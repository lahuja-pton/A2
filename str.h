/*--------------------------------------------------------------------*/
/* str.h                                                              */
/* Author: Lakshit Ahuja                                              */
/* Interface for string manipulation functions.                       */
/*--------------------------------------------------------------------*/

#ifndef STR_INCLUDED
#define STR_INCLUDED

#include <stddef.h>
#include <assert.h>

/* Return the length of string str, not including the trailing '\0'. */
size_t Str_getLength(const char str[]);

/* Copy string src into dest and return dest. */
char* Str_copy(char dest[], const char src[]);

/* Append string src to dest and return dest. */
char* Str_concat(char dest[], const char src[]);

/* Return a negative, zero, or positive value comparing lhs with rhs. */
int Str_compare(const char lhs[], const char rhs[]);

/* Return a pointer to the first occurrence of substr in str, or NULL. */
char* Str_search(const char str[], const char substr[]);

#endif