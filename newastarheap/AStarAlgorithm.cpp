#include "grid.h" 
#include "map.h" 
#include "heap.h"
#include "utils.hpp"
#include "mem_manager.h"
#include <iostream>
#include <fstream>
#include <queue>
#include <ctime>
#include <cstdlib>
#include <cstring>
#include <vector>
#include <omp.h>

#define _BENCHMARK_LOAD_PER_PUSH
#define _BENCHMARK_STORE_PER_PUSH
#define _BENCHMARK_LOAD_PER_POP
#define _BENCHMARK_STORE_PER_POP

#define _BENCHMARK

extern size_t up_swap_cnt, down_swap_cnt;
extern size_t push_cnt, pop_cnt;
extern size_t h_up_loop_cnt, h_down_loop_cnt;
extern size_t find_cnt;

typedef unsigned long long ull;

using namespace std;
constexpr int SIZE = 512;

ull pop_clk = 0;
ull push_clk = 0;

#define abs(x) ((x)>=0?(x):-(x))
#define max(x, y) ((x)>(y)?(x):(y))

typedef struct TestCase {
    int start_col;
    int start_row;
    int dest_col;
    int dest_row;
    int length;
} TestCase_t;

DoubleMemManager mem(sizeof(Grid_t), 4096 / sizeof(Grid_t) + 1, sizeof(Grid_t *), 4096 / sizeof(Grid_t *) - 1);
MemManager grid_mem(sizeof(Grid_t), 4096 / sizeof(Grid_t) + 1);

int astar(Map &map, int start_col, int start_row, int dest_col, int dest_row);
void expand(Map *map, int current_id, int *indexptr, int *connectptr, bool *closed, int current_length, Heap *openlist, int cols, int dest_col, int dest_row);

int main(int argc, char *argv[])
{
    mem.mem_clear(HEAP);
    mem.mem_clear(GRID);
    grid_mem.mem_clear();
	Map map("./maze512-1-0");
    vector<TestCase_t> testcases;

    ifstream ifs("./maze512-1-0.map.scen");
    string ignore;
    int start_col, start_row, dest_col, dest_row, length;
    ifs >> ignore >> ignore;

    while(ifs>>ignore>>ignore>>ignore>>ignore>>start_col>>start_row>>dest_col>>dest_row>>length) {
        TestCase_t testcase;
        testcase.start_col = start_col;
        testcase.start_row = start_row;
        testcase.dest_col = dest_col;
        testcase.dest_row = dest_row;
        testcase.length = length;
        testcases.push_back(testcase);
    }

    //#pragma omp parallel for
    for (unsigned long i = 0; i < testcases.size(); ++i) {
        mem.mem_clear(HEAP);
        mem.mem_clear(GRID);
        grid_mem.mem_clear();
        TestCase_t testcase = testcases[i];
        int shortestlength = astar(map, testcase.start_col, testcase.start_row, testcase.dest_col, testcase.dest_row);
        //printf("%lu: %d\n", i, shortestlength);
        if (shortestlength != testcase.length){
            printf("fail\n");
            exit(1);
        }
    }

#ifdef _BENCHMARK
    printf("pop cnt: %lu pop clock %llu\n", pop_cnt, pop_clk);
    printf("push cnt: %lu push clock %llu\n", push_cnt, push_clk);

    size_t push_load = up_swap_cnt * 2 + push_cnt * 0 + h_up_loop_cnt * 6;
    size_t push_store = up_swap_cnt * 2 + push_cnt * 1;
    size_t pop_load = down_swap_cnt * 2 + pop_cnt * 1 + h_down_loop_cnt * 6 + find_cnt * 16;
    size_t pop_store = down_swap_cnt * 2 + pop_cnt * 1;
    //cout << "Push Load: " << push_load << endl;
    //cout << "Push Store: " << push_store << endl;
    //cout << "Pop Load: " << pop_load << endl;
    //cout << "Pop Store: " << pop_store << endl;
    double ld_thru = (double)(push_load + pop_load) / (double)(push_clk+pop_clk);
    double st_thru = (double)(push_store + pop_store) / (double)(push_clk+pop_clk);

    cout << "Load Throughput: " << ld_thru << endl;
    cout << "Store Throughput: " << st_thru << endl;
#endif


	return 0;
}

/**
 * Use astar to find the length of the shortest path from start to dest,
 * return -1 if the dest is not reachable from
 */
int astar(Map &map, int start_col, int start_row, int dest_col, int dest_row) {

	int cols = map.GetColNum();
	int start_id = start_row * SIZE + start_col;
	int dest_id = dest_row * SIZE + dest_col;
	int* indexptr = map.GetIndexAddr();
	int* connectptr = map.GetConnectAddr();
	bool closed[SIZE * SIZE] = {0};
	int shortestlength = 0;

	Heap openlist;

	//struct Grid *start_ptr = (struct Grid *) malloc(sizeof(struct Grid));
    //struct Grid *start_ptr = (struct Grid *)mem.mem_alloc(GRID, 1);
    struct Grid *start_ptr = (struct Grid *)grid_mem.mem_alloc();
	start_ptr->id = start_id;
	start_ptr->cost = 0;
	start_ptr->prev_length = 0;

#ifdef _BENCHMARK
    //push_cnt++;
    ull t0 = rdtsc();
	openlist.push(start_ptr);
    push_clk += rdtsc() - t0;
#else
	openlist.push(start_ptr);
#endif

	while (true)
	{
		if (openlist.size() == 0)
		{
			cout << "Empty openlist! " << endl;
            return -1;
		}
		int current_id = openlist.top()->id;
        //printf("current id %d\n", current_id);
		if (current_id == dest_id)
		{
			//cout << "Shortest Pathlength : " << openlist.top()->prev_length << endl;
			shortestlength = openlist.top()->prev_length;
			while (openlist.size() != 0)
			{
				//free(openlist.top());
                //mem.mem_free(openlist.top());
                grid_mem.mem_free(openlist.top());
#ifdef _BENCHMARK
                //pop_cnt++;
                ull t0 = rdtsc();
                openlist.pop();
                pop_clk += rdtsc() - t0;
#else
				openlist.pop();
#endif
			}
			break;
		}
		int current_length = openlist.top()->prev_length;
		//free(openlist.top());
        //mem.mem_free(openlist.top());
        grid_mem.mem_free(openlist.top());
#ifdef _BENCHMARK
        //pop_cnt++;
        ull t0 = rdtsc();
        openlist.pop();
        pop_clk += rdtsc() - t0;
#else
		openlist.pop();
#endif
		closed[current_id] = true;

        expand(&map, current_id, indexptr, connectptr, closed, current_length, &openlist, cols, dest_col, dest_row);
	}

    return shortestlength;
}

void expand(Map *map, int current_id, int *indexptr, int *connectptr, bool *closed, int current_length, Heap *openlist, int cols, int dest_col, int dest_row) {
    for (int iter = indexptr[current_id]; iter < indexptr[current_id + 1]; ++iter) //TODO: SIMD
    {
        if (closed[connectptr[iter]] != 1)
        {
            // struct Grid *grid_ptr = (struct Grid *)malloc(sizeof(struct Grid));
            // struct Grid *grid_ptr = (struct Grid *)mem.mem_alloc(GRID, 1);
            struct Grid *grid_ptr = (struct Grid *)grid_mem.mem_alloc();
            int manh_dis = abs(connectptr[iter] / cols - dest_row) + abs(connectptr[iter] % cols - dest_col);
            grid_ptr->id = connectptr[iter];
            grid_ptr->prev_length = current_length + 1;
            grid_ptr->cost = current_length + 1 + manh_dis;
            map->RecordPath(current_id, grid_ptr->id);

#ifdef _BENCHMARK
            //push_cnt++;
            ull t0 = rdtsc();
            openlist->push(grid_ptr);
            push_clk += rdtsc() - t0;
#else
            openlist->push(grid_ptr);
#endif
        }
    }
}
