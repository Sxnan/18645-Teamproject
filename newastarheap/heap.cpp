#include "heap.h"

Heap::Heap(void)
{
    heapsize = 0;
}

int Heap::size()
{
    return heapsize;
}

//void Heap::push(int newdata)
void Heap::push(Grid_t *newgridptr)
{
    //data[++heapsize] = newdata;
    ptr[++heapsize] = newgridptr;
    heapify_up();
    return;
}

void Heap::heapify_up() {
    int now = heapsize;
    //while(data[now] <= data[now/2] && now != 1)
    while(now != 1 && ptr[now]->cost <= ptr[now/2]->cost)
    {
        // int t = data[now];
        // data[now] = data[now/2];
        // data[now/2] = t;
        Grid_t *t = ptr[now];
        ptr[now] = ptr[now/2];
        ptr[now / 2] = t;
        now = now / 2;
    }
    return;
}

//int Heap::pop()
void Heap::pop()
{
    //if(heapsize == 0) return -1;
    // int root = data[1];
    // data[1] = data[heapsize--];
    ptr[1] = ptr[heapsize--];
    heapify_down();
    return;
}

void Heap::heapify_down() {
    int father = 1, child;
    while(father * 2 <= heapsize)
    {
        child = 2 * father;
        //if(child + 1 <= heapsize && data[child+1] < data[child]) child++;
        if(child + 1 <= heapsize && ptr[child+1]->cost < ptr[child]->cost) child++;
        if(ptr[father]->cost > ptr[child]->cost)
        {
            Grid_t *t = ptr[father];
            ptr[father] = ptr[child];
            ptr[child] = t;
            father = child;
        }
        else break;
    }
    return;
}

Grid_t * Heap::top(void)
{
    return ptr[1];
}
