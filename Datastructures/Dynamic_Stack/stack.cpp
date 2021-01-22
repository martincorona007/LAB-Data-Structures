//
// Created by martin on 7/15/2018.
//
#include "node.h"
#include "stack.h"
stack::stack(int x){
    n=x;
    s=0;

}
void stack::push(int xx){
    if(full()){
        printf(" Stack overflow");
        return;
    }
    node *p=new node(xx);
    p->next(init);
    init=p;
    s++;
    /*if(full()){
        printf(" Stack overflow ");
            return;
    }
    if(empty())
      init=eoq=new node(xx);
    else{
        eoq->next(new node(xx));
        eoq=eoq->next();
      }
      s++;
      */

}
int stack::pop(){
    if(empty()){
        printf("Error stack");
    }
    int x=init->data();
    node *p=init;
    init=p->next();
    delete p;
    s--;
    return x;
    /*
    if(empty()){
        printf("Err: empty stack\n");
    }

int x=init->data();
node *p=init;
init=p->next();
delete p;
if(!init) eoq=NULL;
s--;
return x;
    */
}
int stack::top(){
    if(empty()){
        printf("ERR: empty stack\n");
        return 0;
    }
    return init->data();

}
int stack::capacity(){return n;}
int stack::size(){return s;}
bool stack::empty(){return s==0;}
bool stack::full(){return s==n;}

