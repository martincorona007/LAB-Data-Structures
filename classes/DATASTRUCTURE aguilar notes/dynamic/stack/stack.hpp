#ifndef STACK_HPP
#define STACK_HPP
#include "node.hpp"
class stack{
    int n;
    int s;
    node *init;

    node *eoq;
public:
     stack(int);
     void push(int);
     int pop();
     int top();

     int capacity();
     int size();
     bool empty();
     bool full();


};
#endif // STACK_HPP
