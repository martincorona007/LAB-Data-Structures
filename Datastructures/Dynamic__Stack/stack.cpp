#include "node.hpp"
#include "stack.hpp"

stackk::stackk(int si){
	n=si;
	s=0;	
}
stackk::stackk(){
}
stackk::~stackk(){
	delete init;
}
void stackk::push(int x){
	if(full()){
		std::cout<<"Stack Overflow"<<std::endl;
	}else{
		node *aux=new node(x);//create new node
		aux->next(init);//point to next 
		init=aux;//keep
		s++;
	}
}
int stackk::pop(){
	if(empty()){
		std::cout<<"Empty Stack"<<std::endl;	
	}else{
		int xx=init->data();//save the first data
		node *aux=init;//aux point to init
		init=aux->next();//init point to the next of aux
		delete aux;//aux is delete
		s--;
		return xx;
	}
}
int stackk::top(){
	if(empty()){
		std::cout<<"Empty stack"<<std::endl;			
	}else{
	
	return init->data();
	}
}




int stackk::sizee(){return s;}
bool stackk::full(){return s==n;}
bool stackk::empty(){return s==0;}
