#include "str.h"

size_t Str_getLength(const char* str) 
{
    const char* strCh = str;
    assert(str != NULL);
    while (*strCh != '\0') strCh++;
    return (size_t) (strCh - str);
}

char* Str_copy(char* dest, const char* src)
{
    char *destCh = dest;
    const *srcCh = src;
    assert(src != NULL && dest != NULL);
    while ((*destCh++ = *srcCh++) != '\0');
    return dest;
} 

char* Str_concat(char* dest, const char* src) 
{
    char *destCh = dest;
    const *srcCh = src;
    assert(src != NULL && dest != NULL);
    while (*destCh != '\0') destCh++;
    while ((*destCh++ = *srcCh++) != '\0');
    return dest;
}

int Str_compare(const char* lhs, const char* rhs) 
{
    const char *lCh = lhs, *rCh = rhs;
    assert(lhs != NULL && rhs != NULL);
    while (*lCh != '\0' || *rCh != '\0') {
        if (*lCh != *rCh) return *lCh - *rCh;
        lCh++; rCh++;
    }
    return 0;
}

char* Str_search(const char* str, const char* substr) 
{
    const char *strCh = str, *subCh = substr;
    const char *start = str;
    assert(str != NULL && substr != NULL);

    if (!*substr) return (char*) str;
    if (!*str) return NULL;

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