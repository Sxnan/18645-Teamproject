astar : AStarAlgorithm.o grid.o map.o
	g++ -pg -O3 -o astar AStarAlgorithm.o grid.o map.o

main.o : AStarAlgorithm.cpp
	g++ -c AStarAlgorithm.cpp
kbd.o : grid.cpp
	g++ -c grid.cpp
command.o : map.cpp
	g++ -c map.cpp

clean :
	rm astar AStarAlgorithm.o grid.o map.o

.PHONY: astar clean
