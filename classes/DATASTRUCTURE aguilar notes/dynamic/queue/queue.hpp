#ifndef QUEUE_HPP
#define QUEUE_HPP
#include "node.hpp"

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

#endif // QUEUE_HPP
