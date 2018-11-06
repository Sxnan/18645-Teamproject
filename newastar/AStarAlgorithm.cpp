#include "grid.h"
#include "map.h"
#include <iostream>
#include <queue>
#include <ctime>
#include <cstdlib>
#include <cstring>

#include "utils.hpp"

using namespace std;
constexpr int SIZE = 512;

#define abs(x) ((x)>=0?(x):-(x))

#define time(inst, cumulator) \
    unsigned long long st, et; \
    st = rdtsc(); \
    inst;   \
    et = rdtsc(); \
    cumulator += (et - st);

unsigned long long pqueue_time = 0;

int main(int argc, char *argv[])
{
	Map map("maze512-1-0.map");

    int start_col = atoi(argv[1]);
    int start_row = atoi(argv[2]);
    int dest_col = atoi(argv[3]);
    int dest_row = atoi(argv[4]);

	//Map map("testmap.map");
	//int rows = map.GetRowNum();
	int cols = map.GetColNum();

    unsigned long long st, et;

    int node_visited = 0;

    st = rdtsc();

    int shortest_length = -1;

    for (int i=0; i < 100; ++i) {
        priority_queue<struct Grid *, vector<struct Grid *>, cmp> openlist;
        bool closed[SIZE * SIZE] = { 0 };
        //int start_row = 213, start_col = 67, dest_row = 231, dest_col = 87;    //114
        //int start_row = 0, start_col = 3, dest_row = 1, dest_col = 0;    //35
        // int start_row = 131, start_col = 5, dest_row = 213, dest_col = 154;    //3531
        int start_id = start_row * SIZE + start_col;
        int dest_id = dest_row * SIZE + dest_col;
        struct Grid * start_ptr = (struct Grid *) malloc(sizeof(struct Grid));
        start_ptr->id = start_id;
        start_ptr->cost = 0;
        start_ptr->prev_length = 0;
        openlist.push(start_ptr);
        vector<int> connections;


        while (true)
        {
            node_visited++;
            connections.clear();
            if (openlist.size() == 0)
            {
                cout << "Empty openlist! " << endl;
                break;
            }
            int current_id = openlist.top()->id;
            if (current_id == dest_id)
            {
                shortest_length = openlist.top()->prev_length;
                while (openlist.size() != 0)
                {
                    free(openlist.top());
                    time(openlist.pop(), pqueue_time)
                }
                break;
            }
            int current_length = openlist.top()->prev_length;
            free(openlist.top());
            time(openlist.pop(), pqueue_time)
            closed[current_id] = true;
            map.GetConnect(current_id, connections);
            for (auto iter = connections.begin(); iter != connections.end(); ++iter)
            {
                if (closed[*iter] != 1)
                {
                    struct Grid * grid_ptr = (struct Grid *) malloc(sizeof(struct Grid));
                    int manh_dis = abs(*iter / cols - dest_row) + abs(*iter % cols - dest_col);
                    grid_ptr->id = *iter;
                    grid_ptr->prev_length = current_length + 1;
                    grid_ptr->cost = current_length + 1 + manh_dis;
                    time(openlist.push(grid_ptr), pqueue_time)
                }
            }
        }


    }
    et = rdtsc();


    cout << "Shortest Pathlength : " << shortest_length << endl;
    cout << "bfs time: " << et - st << endl;
    cout << "node visited: " << node_visited/10 << endl;
    cout << "pqueue_time: " << pqueue_time << endl;

	return 0;
}
