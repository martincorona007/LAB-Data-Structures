#ifndef STACK_HPP
#define STACK_HPP
#include "node.hpp"
class stackk{
	int n;//size
	int s;//inidicator of the stack
	node *init;//node initial
	
	
   
    public:
	stackk(int);
	stackk();	
	~stackk();
	void push(int);
	int pop();
	int top();

	int sizee();
	bool full();
	bool empty();
};
#endif //STACK_HPP
