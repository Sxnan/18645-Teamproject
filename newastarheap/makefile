CXXFLAGS=-O3 -g

all: astar_binary astar

astar_binary: AStarAlgorithm.o grid.o map.o heapbinary.o mem_manager.o
	g++ $(CXXFLAGS) -o $@ $^

astar: AStarAlgorithm.o grid.o map.o heap.o mem_manager.o
	g++ $(CXXFLAGS) -o $@ $^

AStarAlgorithm.o : AStarAlgorithm.cpp
grid.o : grid.cpp
heap.o : heap.cpp
heapbinary.o: heapbinary.cpp
mem_manager.o : mem_manager.cpp

map.o : map.cpp
	g++ -c -o $@ $^

clean :
	rm astar_binary astar AStarAlgorithm.o grid.o map.o heap.o heapbinary.o mem_manager.o

.PHONY: all clean
