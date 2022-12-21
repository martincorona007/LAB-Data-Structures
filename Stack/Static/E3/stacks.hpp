#ifndef STACKS_HPP
#define STACKS_HPP
#include <stdio.h>
#include <iostream>
#include <ctime>
#include <stdlib.h>
typedef int data;//type of data
class stacks{
        int _s;//size of the stack
        int *a;//the array
        int s;//indicator in the stack
    public:
        stacks(data);//constructor
        ~stacks();//destructor

        void push(data);//insert data
        int top();//read data
        int pop();//extract data

        int sizee();
        bool emptyy();//is it empty?
        bool full();//is it full?


};

#endif  //STACKS_HPP
