#pragma once
#include <string>
#include <vector>
using namespace std;
constexpr int MAX = 512 * 512;

class Map
{
private:
	//unsigned int pathgrid[MAXSIZE][MAXSIZE] = {0};
	//vector<vector<int> > pathgrid;
	// vector<int> index;
	// vector<int> connect;
	int index[MAX] = {0};
	int connect[MAX] = {0};
	int rows, cols;

  public:
	Map(string filename);
	void PrintMap(void);
	//void GetConnect(int gridid, vector<int> &v);
	int GetRowNum(void);
	int GetColNum(void);
	int *GetIndexAddr(void);
	int *GetConnectAddr(void);
};
