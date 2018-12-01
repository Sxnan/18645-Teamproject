CXXFLAGS=-O3

all: astar astar_small astar_binary

astar: AStarAlgorithm.o grid.o map.o heap.o
	g++ $(CXXFLAGS) -o $@ $^

astar_small: AStarAlgorithm_small.o grid.o map.o heap.o
	g++ $(CXXFLAGS) -o $@ $^

astar_binary: AStarAlgorithm_binary.o grid.o map.o heapbinary.o
	g++ $(CXXFLAGS) -o $@ $^

AStarAlgorithm.o : AStarAlgorithm.cpp
AStarAlgorithm_small.o: AStarAlgorithm_small.cpp
AStarAlgorithm_binary.o: AStarAlgorithm_binary.cpp
grid.o : grid.cpp
heap.o : heap.cpp
heapbinary.o: heapbinary.cpp

map.o : map.cpp
	g++ -c -o $@ $^

clean :
	rm astar_binary astar astar_small *.o

.PHONY: all clean
