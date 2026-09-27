/*--------------------------------------------------------------------*/
/* stra.c                                                             */
/* Author: Lakshit Ahuja                                              */
/* Implements string manipulation functions.                         */
/*--------------------------------------------------------------------*/

#include "str.h"

/* Return the length of string str, not including the trailing '\0'. */
size_t Str_getLength(const char str[]) 
{
    size_t len = 0;
    assert(str != NULL);
    while (str[len]) len++;
    return len;
}

/* Copy string src into dest and return dest. */
char* Str_copy(char dest[], const char src[]) 
{
    size_t chx = 0;
    assert(src != NULL && dest != NULL);
    while ((dest[chx] = src[chx])) chx++;
    return dest;
}

/* Append string src to dest and return dest. */
char* Str_concat(char dest[], const char src[]) 
{
    size_t chx = 0, len;
    assert(src != NULL && dest != NULL);
    while (dest[chx]) chx++;
    len = chx;
    while ((dest[chx] = src[chx - len])) chx++;
    return dest;
}

/* Return a negative, zero, or positive value comparing lhs with rhs. */
int Str_compare(const char lhs[], const char rhs[]) 
{
    size_t chx = 0;
    assert(lhs != NULL && rhs != NULL);

    while (lhs[chx] || rhs[chx]) {
        if (lhs[chx] != rhs[chx])
            return (int) (lhs[chx] - rhs[chx]);
        chx++;
    }
    
    return 0;
}

/* Return a pointer to the first occurrence of substr in str, or NULL */
char* Str_search(const char str[], const char substr[]) 
{
    size_t left = 0, right = 0;
    assert(str != NULL && substr != NULL);

    if (!substr[0]) return (char*) str;
    if (!str[0]) return NULL;

    while (str[left]) {
        /* increments left until first character matches */
        while (str[left] && str[left] != substr[0]) left++;
        if (!str[left]) break;
        right = left;
        do {
            /* increments right if it matches with the current char */
            right++;
            if (!substr[right-left]) 
                /* if full string matches, return */
                return (char*) &str[left];
        } while (str[right] && str[right] == substr[right-left]);
        left++;
    }
    return NULL;
}