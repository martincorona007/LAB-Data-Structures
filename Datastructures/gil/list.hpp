#ifndef Order_hpp
#define Order_hpp
#include <cstdio>
#include <cstdlib>
#include <ctime>

class list {
	
int *array;
int len;
int range;

static int centinela;

public:
	list(int, int);
	~list();
	
	int &operator[](int);
	
	void initrand();
	//void swap(int &, int &);
	void gen();
	void imprimir();
	
	int longitud() const;

};

#endif
