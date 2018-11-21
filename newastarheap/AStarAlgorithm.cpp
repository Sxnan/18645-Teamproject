#include "grid.h"
#include "map.h"
#include "heap.h"
#include <iostream>
#include <queue>
#include <ctime>
#include <cstdlib>
#include <cstring>
using namespace std;
constexpr int SIZE = 512;

#define abs(x) ((x)>=0?(x):-(x))

int astar(Map &map, int start_col, int start_row, int dest_col, int dest_row);

int main(int argc, char *argv[])
{
	Map map("maze512-1-0.map");
	int start_col = atoi(argv[1]);
	int start_row = atoi(argv[2]);
	int dest_col = atoi(argv[3]);
	int dest_row = atoi(argv[4]);

    int shortestlength = astar(map, start_col, start_row, dest_col, dest_row);

    if (shortestlength != -1) {
        cout << "Shortest Pathlength : " << shortestlength << endl;
    } else {
        cout << "unreachable\n";
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
		if(openlist.top()->id == 513)
			cout << "Catched! " << endl;
		free(openlist.top());
		openlist.pop();
		closed[current_id] = true;
		for (int iter = indexptr[current_id]; iter < indexptr[current_id + 1]; ++iter) //TODO: SIMD
		{
			if (closed[connectptr[iter]] != 1)
			{
				struct Grid *grid_ptr = (struct Grid *)malloc(sizeof(struct Grid));
				int manh_dis = abs(connectptr[iter] / cols - dest_row) + abs(connectptr[iter] % cols - dest_col);
				grid_ptr->id = connectptr[iter];
				grid_ptr->prev_length = current_length + 1;
				grid_ptr->cost = current_length + 1 + manh_dis;
				map.RecordPath(current_id, grid_ptr->id);
				openlist.push(grid_ptr);
			}
		}
	}

    return shortestlength;
}
