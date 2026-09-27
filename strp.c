#include "str.h"

size_t Str_getLength(const char* str) 
{
    assert(str != NULL);
    const char* strCh = str;
    while (*strCh != '\0') strCh++;
    return (size_t) (strCh - str);
}

char* Str_copy(char* dest, const char* src)
{
    assert(src != NULL && dest != NULL);
    char *destCh = dest, *srcCh = src;
    while ((*destCh++ = *srcCh++) != '\0');
    return dest;
} 

char* Str_concat(char* dest, const char* src) 
{
    assert(src != NULL && dest != NULL);
    char *destCh = dest, *srcCh = src;
    while (*destCh != '\0') destCh++;
    while ((*destCh++ = *srcCh++) != '\0');
    return dest;
}

int Str_compare(const char* lhs, const char* rhs) 
{
    assert(lhs != NULL && rhs != NULL);
    const char *lCh = lhs, *rCh = rhs;
    while (*lCh != '\0' || *rCh != '\0') {
        if (*lCh != *rCh) return *lCh - *rCh;
        lCh++; rCh++;
    }
    return 0;
}

char* Str_search(const char* str, const char* substr) 
{
    assert(str != NULL && substr != NULL);

    if (!*substr) return (char*) str;
    if (!*str) return NULL;

    const char *strCh = str, *subCh = substr;
    const char *start = str;

    while (*strCh != '\0') {
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