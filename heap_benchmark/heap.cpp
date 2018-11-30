#include "heap.h"
#include <immintrin.h>

//int upcounter = 0, upcounteradd = 0, downcounter = 0, upswap = 0, downswap = 0, findminloop = 0, if_1 = 0, if_2 = 0;

int h_up = 0, h_up_loop = 0, h_up_loop_plus = 0, h_up_swap = 0;
int h_down = 0, h_down_loop = 0, h_down_cond = 0, h_down_swap = 0;
int find_min = 0, find_min_loop = 0, find_min_cond_1 = 0, find_min_cond_2 = 0;

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
    //data[++heapsize] = newdata;
    ptr[++heapsize] = newgridptr;
    heapify_up();
    return;
}

void Heap::heapify_up() {
    h_up++;
    int now = heapsize;
    //while(data[now] <= data[now/2] && now != 1)
    while(now != 1 && ptr[now]->cost <= ptr[(now + child_node_num - 2) / child_node_num]->cost)
    {
        h_up_loop++;
        h_up_swap++;
        swap(&ptr[now], &ptr[(now + child_node_num - 2) / child_node_num]);
        now = (now + child_node_num - 2) / child_node_num;
    }
    if(now != 1 && ptr[now]->cost > ptr[(now + child_node_num - 2) / child_node_num]->cost)
        h_up_loop_plus++;
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

int Heap::find_min_child(int child)
{
    find_min++;
    //int min_child = 100000, min_child_id = -1;
    //for (int i = 0; i < child_node_num; i++)
    //{
    //    find_min_loop++;
    //    if(child + i <= heapsize)
    //    {
    //        find_min_cond_1++;
    //        if(ptr[child + i]->cost < min_child)
    //        {
    //            find_min_cond_2++;
    //            min_child = ptr[child + i]->cost;
    //            min_child_id = i;
    //        }
    //    }
    //}
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

    return min_child_id;
}

void Heap::heapify_down() {
    h_down++;
    int father = 1, child;
    while(father * child_node_num - (child_node_num - 2) <= heapsize)
    {
        h_down_loop++;
        child = father * child_node_num - (child_node_num - 2);
        child += find_min_child(child);
        if(ptr[father]->cost > ptr[child]->cost)
        {
            // auto t = ptr[father];
            // ptr[father] = ptr[child];
            // ptr[child] = t;
            h_down_cond++;
            h_down_swap++;
            swap(&ptr[father], &ptr[child]);
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
