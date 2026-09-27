/*--------------------------------------------------------------------*/
/* strp.c                                                             */
/* Author: Lakshit Ahuja                                              */
/* Implements string manipulation functions.                         */
/*--------------------------------------------------------------------*/

#include "str.h"

/* Return the length of string str, not including the trailing '\0'. */
size_t Str_getLength(const char* str) 
{
    const char* strCh = str;
    assert(str != NULL);
    while (*strCh) strCh++;
    return (size_t) (strCh - str);
}

/* Copy string src into dest and return dest. */
char* Str_copy(char* dest, const char* src)
{
    char* destCh = dest;
    const char* srcCh = src;
    assert(src != NULL && dest != NULL);
    while ((*destCh++ = *srcCh++));
    return dest;
}

/* Append string src to dest and return dest. */
char* Str_concat(char* dest, const char* src) 
{
    char* destCh = dest;
    const char* srcCh = src;
    assert(src != NULL && dest != NULL);
    while (*destCh) destCh++;
    while ((*destCh++ = *srcCh++));
    return dest;
}

/* Return a negative, zero, or positive value comparing lhs with rhs. */
int Str_compare(const char* lhs, const char* rhs) 
{
    const char *lCh = lhs, *rCh = rhs;
    assert(lhs != NULL && rhs != NULL);
    while (*lCh || *rCh) {
        if (*lCh != *rCh) return (int) (*lCh - *rCh);
        lCh++; rCh++;
    }
    return 0;
}

/* Return a pointer to the first occurrence of substr in str, or NULL. */
char* Str_search(const char* str, const char* substr) 
{
    const char *strCh = str, *subCh = substr;
    const char *start = str;
    assert(str != NULL && substr != NULL);

    if (!*substr) return (char*) str;
    if (!*str) return NULL;

    while (*strCh) {
        if (*strCh != *subCh) {
            start++;
            strCh = start;
            subCh = substr;
        } else {
            strCh++;
            subCh++;

            if (*subCh == '\0')
                return (char*) start;
        }
    }
    return NULL;
}