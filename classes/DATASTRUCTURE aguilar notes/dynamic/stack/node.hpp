#ifndef NODE_HPP
#define NODE_HPP
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
#endif // NODE_HPP
