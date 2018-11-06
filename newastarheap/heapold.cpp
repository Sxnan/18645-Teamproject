#include <iostream>
#include <cstdlib>
#include <ctime>
using namespace std;

class Heap
{
    private:
    int data[100];
    int size;

    public:
    Heap(void);
    int GetSize();
    int GetData(int index);
    void InsertData(int newdata);
    int GetRoot();
    void Output();
};

Heap::Heap(void)
{
    size = 0;
}

int Heap::GetSize()
{
    return size;
}

void Heap::InsertData(int newdata)
{
    data[++size] = newdata;
    int now=size;
    while(data[now] <= data[now/2] && now != 1)
    {
        int t = data[now];
        data[now] = data[now/2];
        data[now/2] = t;
        now = now / 2;
    }
    return;
}

int Heap::GetRoot()
{
    if(size == 0) return -1;
    int root = data[1];
    data[1] = data[size--];
    int father = 1, child;
    while(father * 2 <= size)
    {
        child = 2 * father;
        if(child + 1 <= size && data[child+1] < data[child]) child++;
        if(data[father] > data[child])
        {
            int t = data[father];
            data[father] = data[child];
            data[child] = t;
            father = child;
            child = father * 2;
        }
        else break;
    }
    return root;
}

void Heap::Output()
{
    int level = 2;
    for(int i=1; i<=size; i++)
    {
        cout << data[i] <<' ';
        if(i+1 == level)
        {
            cout << endl;
            level*=2;
        }
    }
}

int main()
{
    Heap heap;
    int heapsize;
    srand(time(NULL));
    cout << "Heap size: ";
    cin >> heapsize;
    for(int i = 0; i < heapsize; i++)
    {
        int data = rand() % 10;
        cout << data << ' ';
        heap.InsertData(data);
    }
    cout << endl;
    heap.Output();
    cout << endl <<endl;
    for(int i = 0; i < heapsize; i++)
    {
        cout << heap.GetRoot() << ' ';
    }
    cout << endl;
    return 0;
}
