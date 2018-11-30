CXXFLAGS=-O3 -g

all: astar_binary astar

astar_binary: AStarAlgorithm.o grid.o map.o heapbinary.o
	g++ $(CXXFLAGS) -o $@ $^

astar: AStarAlgorithm.o grid.o map.o heap.o
	g++ $(CXXFLAGS) -o $@ $^

AStarAlgorithm.o : AStarAlgorithm.cpp
grid.o : grid.cpp
heap.o : heap.cpp
heapbinary.o: heapbinary.cpp

map.o : map.cpp
	g++ -c -o $@ $^

clean :
	rm astar_binary astar AStarAlgorithm.o grid.o map.o heap.o heapbinary.o

.PHONY: all clean
