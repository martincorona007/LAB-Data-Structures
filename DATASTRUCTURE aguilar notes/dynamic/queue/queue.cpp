#include "node.hpp"
#include "queue.hpp"
queue::queue(int c){
    n=c;
    s=0;
}
void queue::enqueue(int x){
    if(full()){
        printf(" Queue overflow");
        return;
    }
    if(empty())
        init=eoq=new node(x);
        else{
            eoq->next(new node(x));
            eoq=eoq->next();
        }
        s++;
}
int queue::dequeue(){
    if(empty()){
        printf(" Empty queue\n");
        return 0;
    }
    int x=init->data();
    node *p=init;
    init=p->next();
    delete p;
    if(!init) eoq=NULL;
    s--;
    return x;
}
int queue::front(){
    if(empty()){
        printf(" Empty queue\n");
        return 0;
    }
    return init->data();
}
int queue::capacity(){return n;}

int queue::size(){return s;}

void queue::clear(){s=0;}

bool queue::empty(){return s==0;}

bool queue::full(){
if(s==n){return true;}
else{ return false;}

}



