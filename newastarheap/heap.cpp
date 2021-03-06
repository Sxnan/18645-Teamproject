#include <stdio.h>
#include "heap.h"
#include <immintrin.h> 
#include "mem_manager.h"

size_t up_swap_cnt = 0, down_swap_cnt = 0;
size_t push_cnt = 0, pop_cnt = 0;
size_t h_up_loop_cnt = 0, h_down_loop_cnt = 0;
size_t find_cnt = 0;
size_t find_min_switch_cnt = 0;

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

void Heap::push(struct Grid *newgridptr)
{
    push_cnt++;
    ptr[++heapsize] = newgridptr;
    heapify_up();
    return;
}

void Heap::heapify_up() {
    int now = heapsize;
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

void Heap::pop()
{
    pop_cnt++;
    ptr[1] = ptr[heapsize--];
    heapify_down();
    return;
}

int Heap::find_min_child(int child)
{
    find_cnt++;
    int min_child = __INT_MAX__, min_child_id;

    struct Grid *c0, *c1, *c2, *c3, *c4, *c5, *c6, *c7;
    int cost0, cost1, cost2, cost3, cost4, cost5, cost6, cost7; 

    c0 = ptr[child + 0];
    c1 = ptr[child + 1];
    c2 = ptr[child + 2];
    c3 = ptr[child + 3];
    c4 = ptr[child + 4];
    c5 = ptr[child + 5];
    c6 = ptr[child + 6];
    c7 = ptr[child + 7];

    int tmp = heapsize - child > 7 ? 7: heapsize - child;
    find_min_switch_cnt += tmp + 1;

    switch(tmp) {
        case 7:
        cost7 = c7->cost; 
        if(child <= heapsize && cost7< min_child) { min_child = cost7; min_child_id = 7; }

        case 6:
        cost6 = c6->cost; 
        if(child <= heapsize && cost6 < min_child) { min_child = cost6; min_child_id = 6; }

        case 5:
        cost5 = c5->cost; 
        if(child <= heapsize && cost5 < min_child) { min_child = cost5; min_child_id = 5; }

        case 4:
        cost4 = c4->cost; 
        if(child <= heapsize && cost4 < min_child) { min_child = cost4; min_child_id = 4; }

        case 3:
        cost3 = c3->cost; 
        if(child <= heapsize && cost3 < min_child) { min_child = cost3; min_child_id = 3; }

        case 2:
        cost2 = c2->cost; 
        if(child <= heapsize && cost2 < min_child) { min_child = cost2; min_child_id = 2; }

        case 1:
        cost1 = c1->cost; 
        if(child <= heapsize && cost1 < min_child) { min_child = cost1; min_child_id = 1; }

        case 0:
        cost0 = c0->cost; 
        if(child <= heapsize) { min_child = cost0; min_child_id = 0; }
    }

    return min_child_id;
}

void Heap::heapify_down() {
    int father = 1, child;
    while(father * child_node_num - (child_node_num - 2) <= heapsize)
    {
        h_down_loop_cnt++;
        child = father * child_node_num - (child_node_num - 2);
        child += find_min_child(child);
        struct Grid **father_dptr = &ptr[father];
        struct Grid **child_dptr = &ptr[child];
        struct Grid *father_ptr = *father_dptr;
        struct Grid *child_ptr = *child_dptr;
        int father_cost = father_ptr->cost;
        int child_cost = child_ptr->cost;
        if(father_cost > child_cost)
        {
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