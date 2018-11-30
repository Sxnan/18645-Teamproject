#include "rdtsc.h"

unsigned long long rdtsc(void)
{
    unsigned a, d;
    __asm__ volatile("rdtsc" : "=a"(a), "=d"(d));
    return ((unsigned long long)a) | (((unsigned long long)d) << 32);
}