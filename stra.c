#include "str.h"

size_t Str_getLength(const char str[]) 
{
    size_t len = 0;
    assert(str != NULL);
    while (str[len] != '\0')
        len++;
    return len;
}

char* Str_copy(char dest[], const char src[]) 
{
    size_t chx = 0;
    assert(src != NULL && dest != NULL);
    while ((dest[chx] = src[chx]) != '\0')
        chx++;
    return dest;
} 

char* Str_concat(char dest[], const char src[]) 
{
    size_t chx = 0, len;
    assert(src != NULL && dest != NULL);
    while (dest[chx] != '\0')
        chx++;
    len = chx;
    while ((dest[chx] = src[chx - len]) != '\0')
        chx++;
    return dest;
}

int Str_compare(const char lhs[], const char rhs[]) 
{
    size_t chx = 0;
    assert(lhs != NULL && rhs != NULL);

    while (lhs[chx] != '\0' || rhs[chx] != '\0') {
        if (lhs[chx] != rhs[chx])
            return lhs[chx] - rhs[chx];
        chx++;
    }
    
    return 0;
}

char* Str_search(const char str[], const char substr[]) 
{
    size_t l = 0, r = 0;
    assert(str != NULL && substr != NULL);

    if (substr[0] == '\0') return (char*) str;
    if (str[0] == '\0') return NULL;

    while (str[l] != '\0') {
        if (str[l] == substr[0]) {
            r = l + 1;
            while (str[r] == substr[r-l]) {
                r++;
                if (substr[r-l] == '\0') return (char*) &str[l];
            }
        }
        l++;
    }
    return NULL;
}