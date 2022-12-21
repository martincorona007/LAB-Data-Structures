//
// Created by martin on 7/15/2018.
//

#ifndef DYNAMIC_QUEUE_NODE_H
#define DYNAMIC_QUEUE_NODE_H

#include <cstdio>
#include <ctime>
#include <cstdlib>
#include <iostream>
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

#endif //DYNAMIC_QUEUE_NODE_H
