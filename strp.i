# 0 "strp.c"
# 0 "<built-in>"
# 0 "<command-line>"
# 1 "/usr/include/stdc-predef.h" 1 3 4
# 0 "<command-line>" 2
# 1 "strp.c"






# 1 "str.h" 1
# 10 "str.h"
# 1 "/usr/lib/gcc/aarch64-redhat-linux/11/include/stddef.h" 1 3 4
# 143 "/usr/lib/gcc/aarch64-redhat-linux/11/include/stddef.h" 3 4

# 143 "/usr/lib/gcc/aarch64-redhat-linux/11/include/stddef.h" 3 4
typedef long int ptrdiff_t;
# 209 "/usr/lib/gcc/aarch64-redhat-linux/11/include/stddef.h" 3 4
typedef long unsigned int size_t;
# 321 "/usr/lib/gcc/aarch64-redhat-linux/11/include/stddef.h" 3 4
typedef unsigned int wchar_t;
# 11 "str.h" 2
# 1 "/usr/include/assert.h" 1 3 4
# 35 "/usr/include/assert.h" 3 4
# 1 "/usr/include/features.h" 1 3 4
# 392 "/usr/include/features.h" 3 4
# 1 "/usr/include/features-time64.h" 1 3 4
# 20 "/usr/include/features-time64.h" 3 4
# 1 "/usr/include/bits/wordsize.h" 1 3 4
# 21 "/usr/include/features-time64.h" 2 3 4
# 1 "/usr/include/bits/timesize.h" 1 3 4
# 19 "/usr/include/bits/timesize.h" 3 4
# 1 "/usr/include/bits/wordsize.h" 1 3 4
# 20 "/usr/include/bits/timesize.h" 2 3 4
# 22 "/usr/include/features-time64.h" 2 3 4
# 393 "/usr/include/features.h" 2 3 4
# 490 "/usr/include/features.h" 3 4
# 1 "/usr/include/sys/cdefs.h" 1 3 4
# 551 "/usr/include/sys/cdefs.h" 3 4
# 1 "/usr/include/bits/wordsize.h" 1 3 4
# 552 "/usr/include/sys/cdefs.h" 2 3 4
# 1 "/usr/include/bits/long-double.h" 1 3 4
# 553 "/usr/include/sys/cdefs.h" 2 3 4
# 491 "/usr/include/features.h" 2 3 4
# 514 "/usr/include/features.h" 3 4
# 1 "/usr/include/gnu/stubs.h" 1 3 4




# 1 "/usr/include/bits/wordsize.h" 1 3 4
# 6 "/usr/include/gnu/stubs.h" 2 3 4


# 1 "/usr/include/gnu/stubs-lp64.h" 1 3 4
# 9 "/usr/include/gnu/stubs.h" 2 3 4
# 515 "/usr/include/features.h" 2 3 4
# 36 "/usr/include/assert.h" 2 3 4
# 64 "/usr/include/assert.h" 3 4



extern void __assert_fail (const char *__assertion, const char *__file,
      unsigned int __line, const char *__function)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__noreturn__));


extern void __assert_perror_fail (int __errnum, const char *__file,
      unsigned int __line, const char *__function)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__noreturn__));




extern void __assert (const char *__assertion, const char *__file, int __line)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__noreturn__));



# 12 "str.h" 2



# 14 "str.h"
size_t Str_getLength(const char str[]);


char* Str_copy(char dest[], const char src[]);


char* Str_concat(char dest[], const char src[]);


int Str_compare(const char lhs[], const char rhs[]);


char* Str_search(const char str[], const char substr[]);
# 8 "strp.c" 2


size_t Str_getLength(const char* str)
{
    const char* strCh = str;
    
# 13 "strp.c" 3 4
   ((
# 13 "strp.c"
   str != 
# 13 "strp.c" 3 4
   ((void *)0)) ? (void) (0) : __assert_fail (
# 13 "strp.c"
   "str != NULL"
# 13 "strp.c" 3 4
   , "strp.c", 13, __extension__ __PRETTY_FUNCTION__))
# 13 "strp.c"
                      ;
    while (*strCh) strCh++;
    return (size_t) (strCh - str);
}


char* Str_copy(char* dest, const char* src)
{
    char* destCh = dest;
    const char* srcCh = src;
    
# 23 "strp.c" 3 4
   ((
# 23 "strp.c"
   src != 
# 23 "strp.c" 3 4
   ((void *)0) 
# 23 "strp.c"
   && dest != 
# 23 "strp.c" 3 4
   ((void *)0)) ? (void) (0) : __assert_fail (
# 23 "strp.c"
   "src != NULL && dest != NULL"
# 23 "strp.c" 3 4
   , "strp.c", 23, __extension__ __PRETTY_FUNCTION__))
# 23 "strp.c"
                                      ;
    while ((*destCh++ = *srcCh++));
    return dest;
}


char* Str_concat(char* dest, const char* src)
{
    char* destCh = dest;
    const char* srcCh = src;
    
# 33 "strp.c" 3 4
   ((
# 33 "strp.c"
   src != 
# 33 "strp.c" 3 4
   ((void *)0) 
# 33 "strp.c"
   && dest != 
# 33 "strp.c" 3 4
   ((void *)0)) ? (void) (0) : __assert_fail (
# 33 "strp.c"
   "src != NULL && dest != NULL"
# 33 "strp.c" 3 4
   , "strp.c", 33, __extension__ __PRETTY_FUNCTION__))
# 33 "strp.c"
                                      ;
    while (*destCh) destCh++;
    while ((*destCh++ = *srcCh++));
    return dest;
}


int Str_compare(const char* lhs, const char* rhs)
{
    const char *lCh = lhs, *rCh = rhs;
    
# 43 "strp.c" 3 4
   ((
# 43 "strp.c"
   lhs != 
# 43 "strp.c" 3 4
   ((void *)0) 
# 43 "strp.c"
   && rhs != 
# 43 "strp.c" 3 4
   ((void *)0)) ? (void) (0) : __assert_fail (
# 43 "strp.c"
   "lhs != NULL && rhs != NULL"
# 43 "strp.c" 3 4
   , "strp.c", 43, __extension__ __PRETTY_FUNCTION__))
# 43 "strp.c"
                                     ;
    while (*lCh || *rCh) {
        if (*lCh != *rCh) return (int) (*lCh - *rCh);
        lCh++; rCh++;
    }
    return 0;
}


char* Str_search(const char* str, const char* substr)
{
    const char *strCh = str, *subCh = substr;
    const char *start = str;
    
# 56 "strp.c" 3 4
   ((
# 56 "strp.c"
   str != 
# 56 "strp.c" 3 4
   ((void *)0) 
# 56 "strp.c"
   && substr != 
# 56 "strp.c" 3 4
   ((void *)0)) ? (void) (0) : __assert_fail (
# 56 "strp.c"
   "str != NULL && substr != NULL"
# 56 "strp.c" 3 4
   , "strp.c", 56, __extension__ __PRETTY_FUNCTION__))
# 56 "strp.c"
                                        ;

    if (!*substr) return (char*) str;
    if (!*str) return 
# 59 "strp.c" 3 4
                     ((void *)0)
# 59 "strp.c"
                         ;

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
    return 
# 74 "strp.c" 3 4
          ((void *)0)
# 74 "strp.c"
              ;
}
