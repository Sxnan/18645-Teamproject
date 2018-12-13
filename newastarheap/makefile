CC=g++
CXXFLAGS=-O3 -g -std=c++11

astar: AStarAlgorithm.o map.o heap.o mem_manager.o
	g++ $(CXXFLAGS) -o $@ $^

AStarAlgorithm.o : AStarAlgorithm.cpp
heap.o : heap.cpp
mem_manager.o : mem_manager.cpp
map.o : map.cpp
	g++ -c -std=c++11 -o $@ $^

clean :
	rm astar *.o

.PHONY: clean
