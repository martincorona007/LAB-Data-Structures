#ifndef QUEUEE_HPP
#define QUEUEE_HPP
#include <stdio.h>
#include <stdlib.h>
#include <ctime>
#include <iostream>

class method{
    int n;//size of the array
    int  r;//Rear
    int *x;//array

    public:
        method(int);
        ~method();
        void enqueue(int);
        int dequeue();
        int frontt();
        int rear();


        int sizee();
        bool full();
        bool emptyy();


};
#endif //QUEUEE_HPP
