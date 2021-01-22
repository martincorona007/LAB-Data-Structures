//
// Created by martin on 7/15/2018.
//

#ifndef DYNAMIC_QUEUE_QUEUE_H
#define DYNAMIC_QUEUE_QUEUE_H

#include "node.h"

class queue{
    int n;
    int s;
    node *init;
    node *eoq;
public:
    queue(int);
    void enqueue(int);
    int dequeue();
    int front();
    int capacity();
    int size();

    void clear();
    bool empty();
    bool full();

};

#endif //DYNAMIC_QUEUE_QUEUE_H
