#include "node.hpp"
node::node(int d){
	_data=d;
	_next=NULL;
}

//getters and setters
int node::data(){
return _data;
}
node *node::next(){
return _next;
}
node *node::next(node *p){
return _next=p;
}


