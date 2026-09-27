# 0 "stra.c"
# 0 "<built-in>"
# 0 "<command-line>"
# 1 "/usr/include/stdc-predef.h" 1 3 4
# 0 "<command-line>" 2
# 1 "stra.c"






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
# 8 "stra.c" 2


size_t Str_getLength(const char str[])
{
    size_t len = 0;
    
# 13 "stra.c" 3 4
   ((
# 13 "stra.c"
   str != 
# 13 "stra.c" 3 4
   ((void *)0)) ? (void) (0) : __assert_fail (
# 13 "stra.c"
   "str != NULL"
# 13 "stra.c" 3 4
   , "stra.c", 13, __extension__ __PRETTY_FUNCTION__))
# 13 "stra.c"
                      ;
    while (str[len]) len++;
    return len;
}


char* Str_copy(char dest[], const char src[])
{
    size_t chx = 0;
    
# 22 "stra.c" 3 4
   ((
# 22 "stra.c"
   src != 
# 22 "stra.c" 3 4
   ((void *)0) 
# 22 "stra.c"
   && dest != 
# 22 "stra.c" 3 4
   ((void *)0)) ? (void) (0) : __assert_fail (
# 22 "stra.c"
   "src != NULL && dest != NULL"
# 22 "stra.c" 3 4
   , "stra.c", 22, __extension__ __PRETTY_FUNCTION__))
# 22 "stra.c"
                                      ;
    while ((dest[chx] = src[chx])) chx++;
    return dest;
}


char* Str_concat(char dest[], const char src[])
{
    size_t chx = 0, len;
    
# 31 "stra.c" 3 4
   ((
# 31 "stra.c"
   src != 
# 31 "stra.c" 3 4
   ((void *)0) 
# 31 "stra.c"
   && dest != 
# 31 "stra.c" 3 4
   ((void *)0)) ? (void) (0) : __assert_fail (
# 31 "stra.c"
   "src != NULL && dest != NULL"
# 31 "stra.c" 3 4
   , "stra.c", 31, __extension__ __PRETTY_FUNCTION__))
# 31 "stra.c"
                                      ;
    while (dest[chx]) chx++;
    len = chx;
    while ((dest[chx] = src[chx - len])) chx++;
    return dest;
}


int Str_compare(const char lhs[], const char rhs[])
{
    size_t chx = 0;
    
# 42 "stra.c" 3 4
   ((
# 42 "stra.c"
   lhs != 
# 42 "stra.c" 3 4
   ((void *)0) 
# 42 "stra.c"
   && rhs != 
# 42 "stra.c" 3 4
   ((void *)0)) ? (void) (0) : __assert_fail (
# 42 "stra.c"
   "lhs != NULL && rhs != NULL"
# 42 "stra.c" 3 4
   , "stra.c", 42, __extension__ __PRETTY_FUNCTION__))
# 42 "stra.c"
                                     ;

    while (lhs[chx] || rhs[chx]) {
        if (lhs[chx] != rhs[chx])
            return (int) (lhs[chx] - rhs[chx]);
        chx++;
    }

    return 0;
}


char* Str_search(const char str[], const char substr[])
{
    size_t left = 0, right = 0;
    
# 57 "stra.c" 3 4
   ((
# 57 "stra.c"
   str != 
# 57 "stra.c" 3 4
   ((void *)0) 
# 57 "stra.c"
   && substr != 
# 57 "stra.c" 3 4
   ((void *)0)) ? (void) (0) : __assert_fail (
# 57 "stra.c"
   "str != NULL && substr != NULL"
# 57 "stra.c" 3 4
   , "stra.c", 57, __extension__ __PRETTY_FUNCTION__))
# 57 "stra.c"
                                        ;

    if (!substr[0]) return (char*) str;
    if (!str[0]) return 
# 60 "stra.c" 3 4
                       ((void *)0)
# 60 "stra.c"
                           ;

    while (str[left]) {

        while (str[left] && str[left] != substr[0]) left++;
        if (!str[left]) break;
        right = left;
        do {

            right++;
            if (!substr[right-left])

                return (char*) &str[left];
        } while (str[right] && str[right] == substr[right-left]);
        left++;
    }
    return 
# 76 "stra.c" 3 4
          ((void *)0)
# 76 "stra.c"
              ;
}
