
enumerator: enumerator.cpp
	g++ -Iinclude -g -Wall -O3 -flto -Wno-reorder -std=c++14 -o enumerator enumerator.cpp -L. -lz3 -pthread

run: enumerator
	env LD_LIBRARY_PATH=. ./enumerator
