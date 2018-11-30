bm : benchmark.o heap.o grid.o rdtsc.o
	g++ -pg -O3 -o bm benchmark.o heap.o grid.o rdtsc.o

benchmark.o : benchmark.cpp grid.h heap.h rdtsc.h
	g++ -O3 -c benchmark.cpp

grid.o : grid.cpp grid.h
	g++ -O3 -c grid.cpp

heap.o : heap.cpp heap.h
	g++ -O3 -c heap.cpp

rdtsc.o : rdtsc.c rdtsc.h
	g++ -O3 -c rdtsc.c

clean :
	rm bm benchmark.o grid.o heap.o
