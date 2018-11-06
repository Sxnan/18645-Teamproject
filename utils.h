#ifndef _UTILS_H
#define _UTILS_H

#define MULTIPLY(dest, src)\
__asm__ __volatile__ (\
        "imul %[rsrc], %[rdest]\n"\
        : [rdest] "+r" (dest)\
        : [rsrc] "r" (src)\
);

#define ADD(dest, src)\
__asm__ __volatile__ (\
        "addl %[rsrc], %[rdest]\n"\
        : [rdest] "+r" (dest)\
        : [rsrc] "r" (src)\
);

unsigned long long rdtsc();

#endif
