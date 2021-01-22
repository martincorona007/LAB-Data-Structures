//
// Created by martin on 6/21/2018.
//

#ifndef DOUBLE_LINKEDLIST_NODE_H
#define DOUBLE_LINKEDLIST_NODE_H
#include <stdio.h>
#include <stdlib.h>
#include <iostream>
#include <ctime>
using namespace std;
typedef int KindData;

struct nodeType{
    KindData info;//information
    nodeType* linkft;//link left
    nodeType* linker;// link right
    /*     |   |    |   |
 linkft <--|---|info|---|-->linker
     *     |___|____|___|
    **/
    /*//
   /*/
};
class dLinkedList{
private:
    nodeType* head;//point to the first element on the list
    nodeType* last;//point to the last element on the list
public:
    dLinkedList();//constructor
    ~dLinkedList();//destructor
    //operations double linked list
//insert
    void insertFirst(KindData);
    void insertLast(KindData);
    void insertBeforeOfX(KindData,KindData);
    void insertAfterOfX(KindData,KindData);
//delete
    bool deleteFirst();
    bool deleteLast();
    bool deleteX(KindData);
    bool deleteBeforeX(KindData);
    bool deleteAfterX(KindData);
//print the list
    void display();

};
#endif //DOUBLE_LINKEDLIST_NODE_H
