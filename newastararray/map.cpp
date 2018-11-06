#include "map.h"
#include <fstream>
#include <iostream>
using namespace std;

constexpr int MAXSIZE = 513;


Map::Map(std::string filename)
{
	ifstream mapfile(filename);
	string strline;
	string raw_map[MAXSIZE];
	int row = 0;

	string pass;
	getline(mapfile, pass);
	getline(mapfile, pass);
	getline(mapfile, pass);
	getline(mapfile, pass);

	while (getline(mapfile, *(raw_map+row))) // readin
		row++;

	rows = row;    // Total rows
	cols = (*raw_map).size();    // Total columns
	int current_index = 0;
	int indexcount = 0;
	for (int i = 0; i < rows; i++)
	{
		for (int j = 0; j < cols; j++)
		{
			//index.push_back(current_index);
			index[indexcount++] = current_index;
			if ((*(raw_map + i))[j] != '@')
			{
				if ((i - 1 >= 0) && (*(raw_map + i - 1))[j] == '.')    //Upper
				{
					//connect.push_back((i - 1) * cols + j);
					//current_index++;
					connect[current_index++] = (i - 1) * cols + j;
				}
				if ((i + 1 < rows) && (*(raw_map + i + 1))[j] == '.')    //Lower
				{
					//connect.push_back((i + 1) * cols + j);
					//current_index++;
					connect[current_index++] = (i + 1) * cols + j;
				}
				if ((j - 1 >= 0) && (*(raw_map + i))[j - 1] == '.')    //Left
				{
					//connect.push_back(i * cols + j - 1);
					//current_index++;
					connect[current_index++] = i * cols + j - 1;
				}
				if ((j + 1 < cols) && (*(raw_map + i))[j + 1] == '.')    //Right
				{
					//connect.push_back(i * cols + j + 1);
					//current_index++;
					connect[current_index++] = i * cols + j + 1;
				}
			}
		}
	}
	//index.push_back(current_index);
	index[indexcount] = current_index;
}

void Map::PrintMap(void)
{
	/*
	for (auto iter = index.begin(); iter != index.end(); ++iter)
	{
		cout << *iter << ' ';
	}
	cout << endl;
	cout << "index size: " << index.size() <<endl;
	for (auto iter = connect.begin(); iter != connect.end(); ++iter)
	{
		cout << *iter << ' ';
	}
	cout << endl;
	*/
	//cout << "index size: " << index.size() << endl;
	//cout << "connect size: " << connect.size() << endl;
	return;
}

// void Map::GetConnect(int gridid, vector<int>& v)
// {
// 	for (int i = index[gridid]; i < index[gridid + 1]; i++)
// 	{
// 		v.push_back(connect[i]);
// 	}
// 	return;
// }

int Map::GetRowNum(void)
{
	return rows;
}

int Map::GetColNum(void)
{
	return cols;
}

int* Map::GetIndexAddr(void)
{
	return index;
}

int *Map::GetConnectAddr(void)
{
	return connect;
}