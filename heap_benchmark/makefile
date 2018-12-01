CC=g++
CXXFLAGS=-O0

bm: benchmark.o heap.o grid.o rdtsc.o
	$(CC) $(CXXFLAGS) -o $@ $^

benchmark.o : benchmark.cpp grid.h heap.h rdtsc.h

grid.o : grid.cpp grid.h

heap.o : heap.cpp heap.h

rdtsc.o : rdtsc.c rdtsc.h

clean :
	rm bm benchmark.o grid.o heap.o

.PHONY: bm
