//
// Created by martin on 7/15/2018.
//

#ifndef DYNAMIC_STACK_NODE_H
#define DYNAMIC_STACK_NODE_H

#include <ctime>
#include <cstdio>
#include <iostream>
#include <cstdlib>
using namespace std;
class node{

    int _data;
    node *_next;

public:
    node(int);
    int data();
    node *next();
    node *next(node *);

};


#endif //DYNAMIC_STACK_NODE_H
