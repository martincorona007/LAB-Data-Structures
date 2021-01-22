//
// Created by martin on 7/15/2018.
//

#ifndef DYNAMIC_STACK_STACK_H
#define DYNAMIC_STACK_STACK_H
#include "node.h"
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
#endif //DYNAMIC_STACK_STACK_H
