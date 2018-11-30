#pragma once

typedef struct Grid
{
	int id;
	int cost;
	int prev_length;
} Grid_t;

struct cmp
{
	bool operator() (struct Grid *a, struct Grid *b)
	{
		return a->cost > b->cost;
	}
};
