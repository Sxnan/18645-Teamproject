#include "grid.h" 
#include "map.h"
#include "heap.h"
#include <iostream>
#include <fstream>
#include <queue>
#include <ctime>
#include <cstdlib>
#include <cstring>
#include <vector>
#include <omp.h>
using namespace std;
constexpr int SIZE = 512;

#define abs(x) ((x)>=0?(x):-(x))
#define max(x, y) ((x)>(y)?(x):(y))

typedef struct TestCase {
    int start_col;
    int start_row;
    int dest_col;
    int dest_row;
    int length;
} TestCase_t;

int astar(Map &map, int start_col, int start_row, int dest_col, int dest_row);
void expand(int current_id, int *indexptr, int *connectptr, bool *closed, int current_length, Heap *openlist, int cols, int dest_col, int dest_row);

int main(int argc, char *argv[])
{
	Map map("maze512-1-0");
    vector<TestCase_t> testcases;

	//int start_col = atoi(argv[1]);
	//int start_row = atoi(argv[2]);
	//int dest_col = atoi(argv[3]);
	//int dest_row = atoi(argv[4]);
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
        TestCase_t testcase = testcases[i];
        int shortestlength = astar(map, testcase.start_col, testcase.start_row, testcase.dest_col, testcase.dest_row);
        if (shortestlength != testcase.length){
            printf("fail\n");
            exit(1);
        }
    }


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

	struct Grid *start_ptr = (struct Grid *) malloc(sizeof(struct Grid));
	start_ptr->id = start_id;
	start_ptr->cost = 0;
	start_ptr->prev_length = 0;

	openlist.push(start_ptr);

	while (true)
	{
		if (openlist.size() == 0)
		{
			//cout << "Empty openlist! " << endl;
            return -1;
		}
		int current_id = openlist.top()->id;
		if (current_id == dest_id)
		{
			//cout << "Shortest Pathlength : " << openlist.top()->prev_length << endl;
			shortestlength = openlist.top()->prev_length;
			while (openlist.size() != 0)
			{
				free(openlist.top());
				openlist.pop();
			}
			break;
		}
		int current_length = openlist.top()->prev_length;
		free(openlist.top());
		openlist.pop();
		closed[current_id] = true;

        expand(current_id, indexptr, connectptr, closed, current_length, &openlist, cols, dest_col, dest_row);
		//for (int iter = indexptr[current_id]; iter < indexptr[current_id + 1]; ++iter) //TODO: SIMD
		//{
		//	if (closed[connectptr[iter]] != 1)
		//	{
		//		struct Grid *grid_ptr = (struct Grid *)malloc(sizeof(struct Grid));
		//		int manh_dis = abs(connectptr[iter] / cols - dest_row) + abs(connectptr[iter] % cols - dest_col);
		//		grid_ptr->id = connectptr[iter];
		//		grid_ptr->prev_length = current_length + 1;
		//		grid_ptr->cost = current_length + 1 + manh_dis;
		//		map.RecordPath(current_id, grid_ptr->id);
		//		openlist.push(grid_ptr);
		//	}
		//}
	}

    return shortestlength;
}

__attribute__((noinline)) void expand(int current_id, int *indexptr, int *connectptr, bool *closed, int current_length, Heap *openlist, int cols, int dest_col, int dest_row) {
    for (int iter = indexptr[current_id]; iter < indexptr[current_id + 1]; ++iter) //TODO: SIMD
    {
        if (closed[connectptr[iter]] != 1)
        {
            struct Grid *grid_ptr = (struct Grid *)malloc(sizeof(struct Grid));
            int manh_dis = abs(connectptr[iter] / cols - dest_row) + abs(connectptr[iter] % cols - dest_col);
            grid_ptr->id = connectptr[iter];
            grid_ptr->prev_length = current_length + 1;
            grid_ptr->cost = current_length + 1 + manh_dis;
            //map.RecordPath(current_id, grid_ptr->id);
            openlist->push(grid_ptr);
        }
    }
}
