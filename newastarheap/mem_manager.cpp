#include <iostream>
#include "mem_manager.h"
using namespace std;

Stack::Stack(void)
{
    capacity = 0;
    for (int i = 0; i < STACK_CAPACITY; i++)
        data[i] = 0;
    top_index = -1;
}

Stack::Stack(int stack_capacity)
{
    capacity = stack_capacity;
    for (int i = 0; i < STACK_CAPACITY; i++)
        data[i] = 0;
    top_index = -1;
}

void Stack::push(int newdata)
{
    data[++top_index] = newdata;
}

int Stack::pop(void)
{
    return data[top_index--];
}

int Stack::size(void)
{
    return top_index + 1;
}

int Stack::top(void)
{
    return data[top_index];
}

void Stack::SetCapacity(int cap)
{
    capacity = cap;
}

void Stack::print(void)
{
    cout << "Stack size: " << top_index + 1 << endl;
    cout << "------ Top ------ " << endl;
    for (int i = top_index; i >= 0; i--)
    {
        cout << data[i] << endl;
    }
    cout << "------ Bottom ------" << endl;
    return;
}

void Stack::clear(void)
{
    while (top_index > 0)
        this->pop();
}

/***********************************************************/

MemManager::MemManager(int usize, int element_num):mem_stack(element_num)
{
    unit_size = usize;
    ele_num = element_num;
    mem_start = new char[usize * element_num];
    for (int i = element_num - 1; i >= 0; i--)
        mem_stack.push(i);
    return;
}

void * MemManager::mem_alloc(void)
{
    int empty_element = mem_stack.pop();
    return static_cast<char *>(mem_start) + empty_element * unit_size;
}

void MemManager::mem_free(void *ptr)
{
    if (ptr == 0)
        return;
    int offset = (static_cast<char *>(ptr) - static_cast<char *>(mem_start)) / unit_size;
    mem_stack.push(offset);
    return;
}

MemManager::~MemManager(void)
{
    delete [] static_cast<char *>(mem_start);
}

void MemManager::print_mem_stack(void)
{
    mem_stack.print();
}

void MemManager::mem_clear(void)
{
    mem_stack.clear();
    for (int i = ele_num - 1; i >= 0; i--)
        mem_stack.push(i);
}

/***********************************************************/

DoubleMemManager::DoubleMemManager(int usize_0, int element_num_0, int usize_1, int element_num_1)
{
    mem_start[0] = new char[usize_0 * element_num_0 + usize_1 * element_num_1];
    mem_start[1] = static_cast<char *>(mem_start[0]) + usize_0 * element_num_0;
    mem_stack[0].SetCapacity(element_num_0);
    mem_stack[1].SetCapacity(element_num_1);
    unit_size[0] = usize_0;
    unit_size[1] = usize_1;
    ele_num[0] = element_num_0;
    ele_num[1] = element_num_1;
    for (int i = element_num_0 - 1; i >= 0; i--)
        mem_stack[0].push(i);
    for (int i = element_num_1 - 1; i >= 0; i--)
        mem_stack[1].push(i);
    return;
}

void * DoubleMemManager::mem_alloc(int type, int element_num)   // TODO: May not be continuous
{
    int first_empty_element = mem_stack[type].pop();
    for (int i = 1; i < element_num; i++)
    {
        mem_stack[type].pop();
    }
    return static_cast<char *>(mem_start[type]) + first_empty_element * unit_size[type];
}

void DoubleMemManager::mem_free(void *ptr)
{
    if (ptr == 0)
        return;
    
    int type = 0;
    if (ptr < mem_start[1])
        type = 0;
    else
        type = 1;    

    int offset = (static_cast<char *>(ptr) - static_cast<char *>(mem_start[type])) / unit_size[type];
    mem_stack[type].push(offset);
    return;
}

DoubleMemManager::~DoubleMemManager(void)
{
    delete [] static_cast<char *>(mem_start[0]);
}

void DoubleMemManager::print_mem_stack(int type)
{
    mem_stack[type].print();
}

void DoubleMemManager::mem_clear(int type)
{
    mem_stack[type].clear();
    for (int i = ele_num[type] - 1; i >= 0; i--)
        mem_stack[type].push(i);
}