#include "heap.h"
#include <immintrin.h> 

Heap::Heap(void)
{
    heapsize = 0;
}

int Heap::size()
{
    return heapsize;
}

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
    while(now != 1 && ptr[now]->cost <= ptr[(now + offset) / child_node_num]->cost)
    {
        // int t = data[now];
        // data[now] = data[now/2];
        // data[now/2] = t;
        auto t = ptr[now];
        ptr[now] = ptr[(now + offset) / child_node_num];
        ptr[(now + offset) / child_node_num] = t;
        now = (now + offset) / child_node_num;
    }
    return;
}

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
    while(father * child_node_num - (offset) <= heapsize)
    {
        child = father * child_node_num - (offset);
        int min_child, min_child_id;
        if(child <= heapsize)
        {
            min_child = ptr[child]->cost;
            min_child_id = child++;
        }
        if(child <= heapsize && ptr[child]->cost < min_child)
        {
            min_child = ptr[child]->cost;
            min_child_id = child++;
        }
        if(child <= heapsize && ptr[child]->cost < min_child)
        {
            min_child = ptr[child]->cost;
            min_child_id = child++;
        }
        if(child <= heapsize && ptr[child]->cost < min_child)
        {
            min_child = ptr[child]->cost;
            min_child_id = child++;
        }
        if(child <= heapsize && ptr[child]->cost < min_child)
        {
            min_child = ptr[child]->cost;
            min_child_id = child++;
        }
        if(child <= heapsize && ptr[child]->cost < min_child)
        {
            min_child = ptr[child]->cost;
            min_child_id = child++;
        }
        if(child <= heapsize && ptr[child]->cost < min_child)
        {
            min_child = ptr[child]->cost;
            min_child_id = child++;
        }
        if(child <= heapsize && ptr[child]->cost < min_child)
        {
            min_child = ptr[child]->cost;
            min_child_id = child++;
        }

        child = min_child_id;
        // swap if needed
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
