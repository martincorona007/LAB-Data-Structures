#ifndef NODE_HPP
#define NODE_HPP
#include <iostream>
#include <ctime>
#include <stdlib.h>
#include <stdio.h>

class node{

 	int _data;//component
	node *_next;//link

    public:
	node(int);
	int data();

	node *next();
	node *next(node *);

};
#endif //NODE_HPP
