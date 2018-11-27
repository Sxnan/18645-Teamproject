astar : AStarAlgorithm.o grid.o map.o heap.o
	g++ -O3 -o astar AStarAlgorithm.o grid.o map.o heap.o -fopenmp

AStarAlgorithm.o : AStarAlgorithm.cpp
	g++ -O3 -c AStarAlgorithm.cpp -fopenmp
grid.o : grid.cpp
	g++ -O3 -c grid.cpp -fopenmp
map.o : map.cpp
	g++ -c map.cpp -fopenmp
heap.o : heap.cpp
	g++ -O3 -c heap.cpp -fopenmp

clean :
	rm astar AStarAlgorithm.o grid.o map.o heap.o

.PHONY: astar clean
