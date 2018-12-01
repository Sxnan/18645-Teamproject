#include <stdio.h>
#include "heap.h"

size_t up_swap_cnt = 0, down_swap_cnt = 0;
size_t push_cnt = 0, pop_cnt = 0;
size_t h_up_loop_cnt = 0, h_down_loop_cnt = 0;
size_t find_cnt = 0;

void swap(struct Grid **p1, struct Grid **p2)
{
    auto t = *p1;
    *p1 = *p2;
    *p2 = t;
    return;
}

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
    push_cnt++;
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
        //printf("here\n");
        // int t = data[now];
        // data[now] = data[now/2];
        // data[now/2] = t;
        h_up_loop_cnt++;
        up_swap_cnt++;
        swap(ptr + now, ptr + now / 2);
        //auto t = ptr[now];
        //ptr[now] = ptr[now/2];
        //ptr[now / 2] = t;
        now = now / 2;
    }
    return;
}

//int Heap::pop()
void Heap::pop()
{
    pop_cnt++;
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
        find_cnt++;
        // if(data[father] > data[child])
        // {
        //     int t = data[father];
        //     data[father] = data[child];
        //     data[child] = t;
        //     father = child;
        //     child = father * 2;
        // }
        if(ptr[father]->cost > ptr[child]->cost)
        {
            down_swap_cnt++;
            swap(ptr + father, ptr + child);
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
