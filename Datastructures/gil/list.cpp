#include "list.hpp"

int list::centinela=69;

list::list(int l, int r){
	len=l;	range=r;
	array=new int[len];
	
	gen();
}

list::~list(){
	delete[]array;
}

int &list::operator [](int i){
	if(i<0 || i>=len) printf("bad index: %i\n", i);
	else{
		return array[i];
	}
	return centinela;
}

void list:: gen(){
	for(int i=0; i<len; i++){
		array[i]=rand() % range + 1;
	}
}

void list::imprimir(){
	for(int i=0; i < len; i++){
		printf("%i ",array[i]);
		//printf("");
	}
	printf("\n\n");
}

int list::longitud() const{
	return len;
}
