bm : benchmark.o heap.o grid.o rdtsc.o
	g++ -pg -O3 -o bm benchmark.o heap.o grid.o rdtsc.o

benchmark.o : benchmark.cpp grid.h heap.h rdtsc.h
	g++ -c -O3 benchmark.cpp

grid.o : grid.cpp grid.h
	g++ -c -O3 grid.cpp

heap.o : heap.cpp heap.h
	g++ -c -O3 heap.cpp

rdtsc.o : rdtsc.c rdtsc.h
	g++ -c -O3 rdtsc.c

clean :
	rm bm benchmark.o grid.o heap.o
