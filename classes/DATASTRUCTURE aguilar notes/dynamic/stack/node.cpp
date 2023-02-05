#include "node.hpp"
node::node(int x){
    _data=x;
    _next=NULL;

}
int node::data(){return _data;}
node *node::next(){return _next;}
node *node::next(node *p){return _next=p;}

