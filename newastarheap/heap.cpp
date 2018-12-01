#include <stdio.h>
#include "heap.h"
#include <immintrin.h> 
#include "mem_manager.h"

extern DoubleMemManager mem;

//int upcounter = 0, upcounteradd = 0, downcounter = 0, upswap = 0, downswap = 0, findminloop = 0, if_1 = 0, if_2 = 0;

// int h_up = 0, h_up_loop = 0, h_up_loop_plus = 0, h_up_swap = 0;
// int h_down = 0, h_down_loop = 0, h_down_cond = 0, h_down_swap = 0;
// int find_min = 0, find_min_loop = 0, find_min_cond_1 = 0, find_min_cond_2 = 0;

size_t up_swap_cnt = 0, down_swap_cnt = 0;
size_t push_cnt = 0, pop_cnt = 0;
size_t h_up_loop_cnt = 0, h_down_loop_cnt = 0;
size_t find_cnt = 0;
size_t cond = 0; 
size_t condp = 0; 

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
    //ptr = (Grid_t **)mem.mem_alloc(HEAP, 300);
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
    while(now != 1)
    {
        h_up_loop_cnt++;
        struct Grid **now_dptr = &ptr[now];
        struct Grid **up_dptr = &ptr[(now + child_node_num - 2) / child_node_num];
        struct Grid *now_ptr = *now_dptr;
        struct Grid *up_ptr = *up_dptr;
        int now_cost = now_ptr->cost;
        int up_cost = up_ptr->cost;
        if(now_cost <= up_cost)
        {
            up_swap_cnt++;
            swap(now_dptr, up_dptr);
            now = (now + child_node_num - 2) / child_node_num;
        }
        else break;
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

int Heap::find_min_child(int child)
{
    find_cnt++;
    int min_child = 100000, min_child_id = -1;
    if(child <= heapsize)
    {
        condp++;
        if(ptr[child]->cost < min_child)
        {
            cond++;
            min_child = ptr[child]->cost;
            min_child_id = child++;
        }
    }
    if(child <= heapsize)
    {
        condp++;
        if(ptr[child]->cost < min_child)
        {
            cond++;
            min_child = ptr[child]->cost;
            min_child_id = child++;
        }
    }
    if(child <= heapsize)
    {
        condp++;
        if(ptr[child]->cost < min_child)
        {
            cond++;
            min_child = ptr[child]->cost;
            min_child_id = child++;
        }
    }
    if(child <= heapsize)
    {
        condp++;
        if(ptr[child]->cost < min_child)
        {
            cond++;
            min_child = ptr[child]->cost;
            min_child_id = child++;
        }
    }
    if(child <= heapsize)
    {
        condp++;
        if(ptr[child]->cost < min_child)
        {
            cond++;
            min_child = ptr[child]->cost;
            min_child_id = child++;
        }
    }
    if(child <= heapsize)
    {
        condp++;
        if(ptr[child]->cost < min_child)
        {
            cond++;
            min_child = ptr[child]->cost;
            min_child_id = child++;
        }
    }
    if(child <= heapsize)
    {
        condp++;
        if(ptr[child]->cost < min_child)
        {
            cond++;
            min_child = ptr[child]->cost;
            min_child_id = child++;
        }
    }
    if(child <= heapsize)
    {
        condp++;
        if(ptr[child]->cost < min_child)
        {
            cond++;
            min_child = ptr[child]->cost;
            min_child_id = child++;
        }
    }
    return min_child_id;
}

void Heap::heapify_down() {
    int father = 1, child;
    while(father * child_node_num - (child_node_num - 2) <= heapsize)
    {
        h_down_loop_cnt++;
        child = father * child_node_num - (offset);
        child = find_min_child(child);
        struct Grid **father_dptr = &ptr[father];
        struct Grid **child_dptr = &ptr[child];
        struct Grid *father_ptr = *father_dptr;
        struct Grid *child_ptr = *child_dptr;
        int father_cost = father_ptr->cost;
        int child_cost = child_ptr->cost;
        if(father_cost > child_cost)
        {
            // auto t = ptr[father];
            // ptr[father] = ptr[child];
            // ptr[child] = t;
            down_swap_cnt++;
            swap(father_dptr, child_dptr);
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

Heap::~Heap(void)
{
    mem.mem_clear(HEAP);
}
