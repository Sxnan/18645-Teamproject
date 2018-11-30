#include "heap.h"

//int upcounter = 0, upcounteradd = 0, downcounter = 0, upswap = 0, downswap = 0, findminloop = 0, if_1 = 0, if_2 = 0;

// int h_up = 0, h_up_loop = 0, h_up_loop_plus = 0, h_up_swap = 0;
// int h_down = 0, h_down_loop = 0, h_down_cond = 0, h_down_swap = 0;
// int find_min = 0, find_min_loop = 0, find_min_cond_1 = 0, find_min_cond_2 = 0;

int up_swap_cnt = 0, down_swap_cnt = 0;
int push_cnt = 0, pop_cnt = 0;
int h_up_loop_cnt = 0, h_down_loop_cnt = 0;
int find_cnt = 0;

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
    while(now != 1)
    {
        h_up_loop_cnt++;
        struct Grid **now_dptr = ptr + now;
        struct Grid **up_dptr = ptr + (now + child_node_num - 2) / child_node_num;
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
    int min_child, min_child_id;

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

    cost0 = c0->cost; 
    cost1 = c1->cost; 
    cost2 = c2->cost; 
    cost3 = c3->cost; 
    cost4 = c4->cost; 
    cost5 = c5->cost; 
    cost6 = c6->cost; 
    cost7 = c7->cost; 

    
    if(child <= heapsize)
    {
        min_child = cost0;
        min_child_id = 0;
    }
    if(child <= heapsize && cost1 < min_child)
    {
        min_child = cost1;
        min_child_id = 1;
    }
    if(child <= heapsize && cost2 < min_child)
    {
        min_child = cost2;
        min_child_id = 2;
    }
    if(child <= heapsize && cost3 < min_child)
    {
        min_child = cost3;
        min_child_id = 3;
    }
    if(child <= heapsize && cost4 < min_child)
    {
        min_child = cost4;
        min_child_id = 4;
    }
    if(child <= heapsize && cost5 < min_child)
    {
        min_child = cost5;
        min_child_id = 5;
    }
    if(child <= heapsize && cost6 < min_child)
    {
        min_child = cost6;
        min_child_id = 6;
    }
    if(child <= heapsize && cost7< min_child)
    {
        min_child = cost7;
        min_child_id = 7;
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
        struct Grid **father_dptr = ptr + father;
        struct Grid **child_dptr = ptr + father;
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
