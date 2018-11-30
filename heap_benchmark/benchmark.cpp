#include <iostream>
#include "heap.h"
#include "rdtsc.h"
#define GRID_NUM 400
using namespace std;

extern int h_up, h_up_loop, h_up_loop_plus, h_up_swap;
extern int h_down, h_down_loop, h_down_cond, h_down_swap;
extern int find_min, find_min_loop, find_min_cond_1, find_min_cond_2;

#define push_pop \
    openlist.push(&grid[1]); \
    openlist.pop();

#define push_pop4 \
    push_pop \
    push_pop \
    push_pop \
    push_pop 

#define push_pop16 \
    push_pop4\
    push_pop4\
    push_pop4\
    push_pop4

#define push_pop64 \
    push_pop16\
    push_pop16\
    push_pop16\
    push_pop16

#define push_pop256 \
    push_pop64\
    push_pop64\
    push_pop64\
    push_pop64

#define push_pop1024 \
    push_pop256\
    push_pop256\
    push_pop256\
    push_pop256

#define push_pop4096 \
    push_pop1024\
    push_pop1024\
    push_pop1024\
    push_pop1024

void init_grids(struct Grid *grid_list)
{
    for (int i = 0; i < GRID_NUM; i++)
    {
        grid_list[i].cost = i;
    }
    return;
}

int main()
{
    struct Grid grid[GRID_NUM];
    Heap openlist;
    init_grids(grid);
    for (int i = 2; i <= 400; i++)
        openlist.push(&grid[i]);

    // Star benchmarking
    
    unsigned long long st, et;

    st = rdtsc();

    push_pop1024

    et = rdtsc();

    cout << "Cycle: " << et-st << endl;

    int push_load = h_up * (7 + 2) + h_up_loop * (13 + 12) + h_up_loop_plus * 12 + h_up_swap * 2;
    int push_store = h_up * (4 + 2) + h_up_loop * (2 + 0) + h_up_loop_plus * 0 + h_up_swap * 2;
    int pop_load = h_down * (7 + 6) + h_down_loop * 16 + h_down_cond * 5 + h_down_swap * 2 + find_min * 1 + find_min_loop * 4 + find_min_cond_1 * 5 + find_min_cond_2 * 6;
    int pop_store = h_down * (3 + 6) + h_down_loop * 1 + h_down_cond * 1 + h_down_swap * 2 + find_min * 6 + find_min_loop * 0 + find_min_cond_1 * 0 + find_min_cond_2 * 2;
    cout << "Push Load: " << push_load << endl;
    cout << "Push Store: " << push_store << endl;
    cout << "Pop Load: " << pop_load << endl;
    cout << "Pop Store: " << pop_store << endl;
    cout << "Load Throughput: " << (double)(push_load + pop_load) / (double)(et - st) << endl;
    cout << "Store Throughput: " << (double)(push_store + pop_store) / (double)(et - st) << endl;
    return 0;
}
