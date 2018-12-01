#define STACK_CAPACITY 600

typedef enum MemType
{
    GRID, 
    HEAP
} mem_t;


class Stack
{
private:
    int capacity;
    int data[STACK_CAPACITY];
    int top_index;

public:
    Stack(void);
    Stack(int stack_capacity);
    void push(int newdata);
    int pop(void);
    int size(void);
    int top(void);
    void print(void);
    void SetCapacity(int cap);
    void clear(void);
};

class MemManager 
{
private:
    void *mem_start;
    int unit_size; 
    int ele_num;
    Stack mem_stack;
public:
    MemManager(int usize, int element_num);
    void *mem_alloc(void);
    void mem_free(void *ptr);
    ~MemManager(void);
    void print_mem_stack(void);
    void mem_clear(void);
};

class DoubleMemManager
{
private:
    void *mem_start[2];
    int unit_size[2]; 
    int ele_num[2];
    Stack mem_stack[2];
public:
    DoubleMemManager(int usize_a, int element_num_a, int usize_b, int element_num_b);
    void *mem_alloc(int type, int element_num);
    void mem_free(void *ptr);
    ~DoubleMemManager(void);
    void print_mem_stack(int type);
    void mem_clear(int type);
};