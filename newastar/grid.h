#pragma once
/*
class Grid
{
private:
	int cost;	//f[k]
	int prev_cost;	//g[k]
	int estimated_cost;	//h[k]
	bool closed;

public:
	Grid(void);
	Grid(int x, int y);
	bool operator<(const Grid &a) const;
	void SetPriority(int p);
	int GetCost(void) const;
};*/

struct Grid
{
	int id;
	int cost;
	int prev_length;
};

struct cmp
{
	bool operator() (struct Grid *a, struct Grid *b)
	{
		return a->cost > b->cost;
	}
};
