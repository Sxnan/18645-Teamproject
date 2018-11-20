astar : AStarAlgorithm.o grid.o map.o heap.o
	g++ -pg -O3 -o astar AStarAlgorithm.o grid.o map.o heap.o

AStarAlgorithm.o : AStarAlgorithm.cpp
	g++ -c AStarAlgorithm.cpp
grid.o : grid.cpp
	g++ -c grid.cpp
map.o : map.cpp
	g++ -c map.cpp
heap.o : heap.cpp
	g++ -c heap.cpp

clean :
	rm astar AStarAlgorithm.o grid.o map.o heap.o

.PHONY: astar clean
