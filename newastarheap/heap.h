#include "grid.h"
constexpr int MAXHEAPSIZE = 500;

class Heap
{
private:
    //int data[MAXHEAPSIZE];
    Grid_t *ptr[MAXHEAPSIZE];
    //Grid_t **ptr;
    int heapsize;
    void heapify_up();
    void heapify_down();
    int child_node_num = 8;
    int find_min_child(int child);

public:
    Heap(void);
    int size();
    //void push(int newdata);
    void push(struct Grid *newgridptr);
    void pop();
    Grid_t* top(void);
    //~Heap(void);
    //int GetData(int index);
    //void Output();
};
