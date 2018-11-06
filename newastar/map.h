#pragma once
#include <string>
#include <vector>
using namespace std;


class Map
{
private:
	//unsigned int pathgrid[MAXSIZE][MAXSIZE] = {0};	//TODO: Save more space? 
	//vector<vector<int> > pathgrid;
	vector<int> index;
	vector<int> connect;
	int rows, cols;
public:
	Map(string filename);
	void PrintMap(void);
	void GetConnect(int gridid, vector<int> &v);
	int GetRowNum(void);
	int GetColNum(void);
};
