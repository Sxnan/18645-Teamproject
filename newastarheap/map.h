#pragma once
#include <string>
using namespace std;
constexpr int MAX = 512 * 512 + 1;
constexpr int CONNECTMAX = MAX * 4;
constexpr int MAXSIZE = 513;

class Map
{
private:
	int index[MAX] = {0};
	int connect[MAX] = {0};
	int path[MAX] = {0};
	string raw_map[MAXSIZE];
	int rows, cols;
	int pathpoints[MAX] = {0};

  public:
	Map(string filename);
	void PrintMap(void);
	int GetRowNum(void);
	int GetColNum(void);
	int *GetIndexAddr(void);
	int *GetConnectAddr(void);
	void RecordPath(int previd, int currid);
	void PrintPath(int startid, int currid);
};
