#include "grid.h"
constexpr int MAXHEAPSIZE = 512 * 512;
;

class Heap
{
private:
    //int data[MAXHEAPSIZE];
    Grid_t *ptr[MAXHEAPSIZE];
    int heapsize;
    void heapify_up();
    void heapify_down();
    int child_node_num = 8;
    int offset = 6;

public:
    Heap(void);
    int size();
    //void push(int newdata);
    void push(Grid_t *newgridptr);
    void pop();
    Grid_t* top(void);
    //int GetData(int index);
    //void Output();
};
