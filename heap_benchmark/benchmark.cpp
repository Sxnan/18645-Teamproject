#include <iostream>
#include "heap.h"
#include "rdtsc.h"
#define GRID_NUM 400
using namespace std;

extern int up_swap_cnt, down_swap_cnt;
extern int push_cnt, pop_cnt;
extern int h_up_loop_cnt, h_down_loop_cnt;
extern int find_cnt;

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

#define min(a, b) ((a)<(b)?(a):(b))
#define max(a, b) ((a)<(b)?(b):(a))

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
    double max_ld_thru = 0;
    double max_st_thru = 0;
    int round = 1 << 16;

    for (int i = 0; i < round; ++i) {
        up_swap_cnt = 0, down_swap_cnt = 0;
        push_cnt = 0, pop_cnt = 0;
        h_up_loop_cnt = 0, h_down_loop_cnt = 0;
        find_cnt = 0;

        st = rdtsc();

        push_pop1024

        et = rdtsc();

        //cout << "Cycle: " << et-st << endl;

        // int push_load = h_up * (7 + 2) + h_up_loop * (13 + 12) + h_up_loop_plus * 12 + h_up_swap * 7;
        // int push_store = h_up * (4 + 2) + h_up_loop * (2 + 0) + h_up_loop_plus * 0 + h_up_swap * 15;
        // int pop_load = h_down * (7 + 6) + h_down_loop * 16 + h_down_cond * 5 + h_down_swap * 7 + find_min * 1 + find_min_loop * 4 + find_min_cond_1 * 5 + find_min_cond_2 * 6;
        // int pop_store = h_down * (3 + 6) + h_down_loop * 1 + h_down_cond * 1 + h_down_swap * 15 + find_min * 6 + find_min_loop * 0 + find_min_cond_1 * 0 + find_min_cond_2 * 2;
        int push_load = up_swap_cnt * 2 + push_cnt * 0 + h_up_loop_cnt * 4;
        int push_store = up_swap_cnt * 2 + push_cnt * 1;
        int pop_load = down_swap_cnt * 2 + pop_cnt * 1 + h_down_loop_cnt * 4 + find_cnt * 16;
        int pop_store = down_swap_cnt * 2 + pop_cnt * 1;
        //cout << "Push Load: " << push_load << endl;
        //cout << "Push Store: " << push_store << endl;
        //cout << "Pop Load: " << pop_load << endl;
        //cout << "Pop Store: " << pop_store << endl;
        max_ld_thru = max((double)(push_load + pop_load) / (double)(et - st), max_ld_thru);
        max_st_thru = max((double)(push_store + pop_store) / (double)(et - st), max_st_thru);
    }
    cout << "Load Throughput: " << max_ld_thru << endl;
    cout << "Store Throughput: " << max_st_thru << endl;
    return 0;
}
