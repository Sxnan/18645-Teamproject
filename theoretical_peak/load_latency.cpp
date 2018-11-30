#include <stdio.h>
#include "../utils.h"

#define max(a, b) ((a)>(b)?(a):(b))
#define min(a, b) ((a)>(b)?(b):(a))

typedef unsigned long long ull;

double latency();

ull data1[1] = {0};
ull data2[1] = {0};

#define load(src, idx, dest)\
    __asm__ __volatile__ (\
            "movq 0x0(%1,%%rax,1),%0"\
            : "=r" (dest)\
            : "r" (src), "a" (idx)\
            );

#define load1(i)\
    load(data1, i, i)

#define load8(i)\
    load1(i)\
    load1(i)\
    load1(i)\
    load1(i)\
    load1(i)\
    load1(i)\
    load1(i)\
    load1(i)

#define load64(i)\
    load8(i)\
    load8(i)\
    load8(i)\
    load8(i)\
    load8(i)\
    load8(i)\
    load8(i)\
    load8(i)

#define load512(i)\
    load64(i)\
    load64(i)\
    load64(i)\
    load64(i)\
    load64(i)\
    load64(i)\
    load64(i)\
    load64(i)

int main() {
    
    double min_latency = __DBL_MAX__;
    const size_t round = 1 << 22;
    
    for (size_t i = 0; i < round; ++i) 
        min_latency = min(min_latency, latency());

    printf("latency :%f\n", min_latency);
}

double latency() {
    ull i = 0;

    ull t0 = rdtsc();
    load512(i);
    load512(i);
    
    ull clk = rdtsc() - t0;

    //printf("latency: %f\n", clk / 1024.0);

    return clk / 1024.0;

}
