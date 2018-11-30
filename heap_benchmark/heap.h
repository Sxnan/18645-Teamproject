#include "grid.h"
constexpr int MAXHEAPSIZE = 512 * 512;

class Heap
{
private:
    //int data[MAXHEAPSIZE];
    struct Grid *ptr[MAXHEAPSIZE];
    int heapsize;
    void heapify_up();
    void heapify_down();
    int child_node_num = 16;
    int find_min_child(int child);

public:
    Heap(void);
    int size();
    //void push(int newdata);
    void push(struct Grid *newgridptr);
    void pop();
    struct Grid* top(void);
    //int GetData(int index);
    //void Output();
};
