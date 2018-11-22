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

//void Heap::push(int newdata)
void Heap::push(struct Grid *newgridptr)
{
    //data[++heapsize] = newdata;
    ptr[++heapsize] = newgridptr;
    heapify_up();
    return;
}

void Heap::heapify_up() {
    int now = heapsize;
    //while(data[now] <= data[now/2] && now != 1)
    while(ptr[now]->cost <= ptr[(now + child_node_num - 2) / child_node_num]->cost && now != 1)
    {
        // int t = data[now];
        // data[now] = data[now/2];
        // data[now/2] = t;
        auto t = ptr[now];
        ptr[now] = ptr[(now + child_node_num - 2) / child_node_num];
        ptr[(now + child_node_num - 2) / child_node_num] = t;
        now = (now + child_node_num - 2) / child_node_num;
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
    while(father * child_node_num - (child_node_num - 2) <= heapsize)
    {
        child = father * child_node_num - (child_node_num - 2);
        int min_child = 100000, min_child_id = -1;
        for (int i = 0; i < child_node_num; i++)
        {
            if(child + i <= heapsize && ptr[child + i]->cost < min_child)
            {
                min_child = ptr[child + i]->cost;
                min_child_id = i;
            }
        }
        child += min_child_id;
        if(ptr[father]->cost > ptr[child]->cost)
        {
            auto t = ptr[father];
            ptr[father] = ptr[child];
            ptr[child] = t;
            father = child;
        }
        else break;
    }
    return;
}

struct Grid * Heap::top(void)
{
    return ptr[1];
}

// void Heap::Output()
// {
//     int level = 2;
//     for(int i=1; i<=size; i++)
//     {
//         cout << data[i] <<' ';
//         if(i+1 == level)
//         {
//             cout << endl;
//             level*=2;
//         }
//     }
// }
