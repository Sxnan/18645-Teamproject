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

int main(int argc, char *argv[])
{
	Map map("maze512-1-0");
	//Map map("testmap.map");
	//int rows = map.GetRowNum();
	int cols = map.GetColNum();
	int* indexptr = map.GetIndexAddr();
	int* connectptr = map.GetConnectAddr();
	//priority_queue<struct Grid *, vector<struct Grid *>, cmp> openlist;
	Heap openlist;
	bool closed[SIZE * SIZE] = {0};
	//int start_row = 213, start_col = 67, dest_row = 231, dest_col = 87;    //114
	//int start_row = 0, start_col = 3, dest_row = 1, dest_col = 0;    //35
	//int start_row = 131, start_col = 5, dest_row = 213, dest_col = 154;    //3531
	int start_col = atoi(argv[1]);
	int start_row = atoi(argv[2]);
	int dest_col = atoi(argv[3]);
	int dest_row = atoi(argv[4]);
	int start_id = start_row * SIZE + start_col;
	int dest_id = dest_row * SIZE + dest_col;
	struct Grid * start_ptr = (struct Grid *) malloc(sizeof(struct Grid));
	start_ptr->id = start_id;
	start_ptr->cost = 0;
	start_ptr->prev_length = 0;
	int shortestlength = 0;
	openlist.push(start_ptr);
	//vector<int> connections;

	//AStar
	while (true)
	{
		//connections.clear();
		if (openlist.size() == 0)
		{
			cout << "Empty openlist! " << endl;
			break;
		}
		int current_id = openlist.top()->id;
		if (current_id == dest_id)
		{
			cout << "Shortest Pathlength : " << openlist.top()->prev_length << endl;
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
		// map.GetConnect(current_id, connections);
		// for (auto iter = connections.begin(); iter != connections.end(); ++iter)
		// {
		// 	if (closed[*iter] != 1)
		// 	{
		// 		struct Grid * grid_ptr = (struct Grid *) malloc(sizeof(struct Grid));
		// 		int manh_dis = abs(*iter / cols - dest_row) + abs(*iter % cols - dest_col);
		// 		grid_ptr->id = *iter;
		// 		grid_ptr->prev_length = current_length + 1;
		// 		grid_ptr->cost = current_length + 1 + manh_dis;
		// 		openlist.push(grid_ptr);
		// 	}
		// }

		//cout << indexptr[current_id] << " * " << indexptr[current_id + 1] << endl;
		//cout << connectptr[0] << " ! " << connectptr[1] << endl;
		for (int iter = indexptr[current_id]; iter < indexptr[current_id + 1]; ++iter) //TODO: SIMD
		{
			if (closed[connectptr[iter]] != 1)
			{
				//cout << connectptr[iter] << ' ';
				struct Grid *grid_ptr = (struct Grid *)malloc(sizeof(struct Grid));
				int manh_dis = abs(connectptr[iter] / cols - dest_row) + abs(connectptr[iter] % cols - dest_col);
				grid_ptr->id = connectptr[iter];
				grid_ptr->prev_length = current_length + 1;
				grid_ptr->cost = current_length + 1 + manh_dis;
				//grid_ptr->prev_id = current_id;
				map.RecordPath(current_id, grid_ptr->id);
				openlist.push(grid_ptr);
			}
		}
		//cout << endl;
	}
	if(shortestlength != 0)
	{
		map.PrintPath(start_id, dest_id);
		map.PrintMap();
	}

	//cout << map.GetRowNum() << endl;
	//cout << map.GetColNum() << endl;

	return 0;
}
