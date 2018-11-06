#pragma once
#include <string>
#include <vector>
using namespace std;
constexpr int MAX = 512 * 512;
constexpr int MAXSIZE = 513;

class Map
{
private:
	//unsigned int pathgrid[MAXSIZE][MAXSIZE] = {0};
	//vector<vector<int> > pathgrid;
	// vector<int> index;
	// vector<int> connect;
	int index[MAX] = {0};
	int connect[MAX] = {0};
	int path[MAX] = {0};
	string raw_map[MAXSIZE];
	int rows, cols;
	int pathpoints[MAX] = {0};

  public:
	Map(string filename);
	void PrintMap(void);
	//void GetConnect(int gridid, vector<int> &v);
	int GetRowNum(void);
	int GetColNum(void);
	int *GetIndexAddr(void);
	int *GetConnectAddr(void);
	int RecordPath(int previd, int currid);
	void PrintPath(int startid, int currid);
};
