CC=g++
CXXFLAGS=-O1

All: load_latency load_throughput

load_throughput: load_throughput.o utils.o

load_latency: load_latency.o utils.o

load_latency.o: load_latency.cpp

load_throughput.o: load_throughput.cpp

utils.o: utils.c

clean: 
	rm load_latency load_throughput *.o

.PHONY: All clean
