#include <stdio.h>
#include "../utils.h"

#define max(a, b) ((a)>(b)?(a):(b))

typedef unsigned long long ull;

double throughput();

ull data1[1] = {0};
ull data2[1] = {0};
ull data3[1] = {0};
ull data4[1] = {0};

#define load(src, idx, dest)\
    __asm__ __volatile__ (\
            "movq 0x0(%1,%2,1),%0"\
            : "=r" (dest)\
            : "r" (src), "r" (idx)\
            );

#define load1(i, j, k, l)\
    load(data1, i, i)\
    load(data2, j, j)\

#define load8(i, j, k, l)\
    load1(i, j, k, l)\
    load1(i, j, k, l)\
    load1(i, j, k, l)\
    load1(i, j, k, l)\
    load1(i, j, k, l)\
    load1(i, j, k, l)\
    load1(i, j, k, l)\
    load1(i, j, k, l)

#define load64(i, j, k, l)\
    load8(i, j, k, l)\
    load8(i, j, k, l)\
    load8(i, j, k, l)\
    load8(i, j, k, l)\
    load8(i, j, k, l)\
    load8(i, j, k, l)\
    load8(i, j, k, l)\
    load8(i, j, k, l)

#define load512(i, j, k, l)\
    load64(i, j, k, l)\
    load64(i, j, k, l)\
    load64(i, j, k, l)\
    load64(i, j, k, l)\
    load64(i, j, k, l)\
    load64(i, j, k, l)\
    load64(i, j, k, l)\
    load64(i, j, k, l)

int main() {

    double max_throughput = 0;
    const size_t round = 1 << 22;

    for (size_t i = 0; i < round; ++i)
        max_throughput = max(max_throughput, throughput());

    printf("throughput: %f\n", max_throughput);
}

double throughput() {
    ull i = 0;
    ull j = 0;

    ull t0 = rdtsc();
    load512(i, j, k, l);
    load512(i, j, k, l);
    
    ull clk = rdtsc() - t0;

    //printf("latency: %f\n", clk / 1024.0);
    //printf("throughput: %f\n", 2 * 1024.0 / clk);

    return 2 * 1024.0 / clk;

}
