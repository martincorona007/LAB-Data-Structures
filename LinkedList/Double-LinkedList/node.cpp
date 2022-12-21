//
// Created by martin on 6/21/2018.
//

#include "node.h"

dLinkedList::dLinkedList(){
    head=NULL;
    last=NULL;
}
dLinkedList::~dLinkedList(){
    delete head;
    delete last;
}
//insert
void dLinkedList::insertFirst(KindData data){
    nodeType* Q=new nodeType;
    (*Q).info=data;
    (*Q).linker=head;
    if(head==NULL){
        head=Q;
        last=Q;

    }
    (*head).linkft=Q;//head point to the link left
    (*Q).linkft=NULL;
    head=Q;//head point to node Q


}
void dLinkedList::insertLast(KindData data) {
    nodeType* Q=new nodeType;
    (*Q).info=data;
    if(head==NULL){
        (*Q).linkft=NULL;
        (*Q).linker=NULL;
        head=Q;
        last=Q;
    }else if(last==Q) {
        last=Q;
        Q->linkft=NULL;
    }else{
            (*Q).linker=NULL;
            (*last).linker=Q;
            (*Q).linkft=last;
            last=Q;

    }
}
void dLinkedList::insertBeforeOfX(KindData x, KindData data) {
    nodeType* Q=new nodeType;
    nodeType* T=new nodeType;
    nodeType* R=new nodeType;
   Q=head;
   while((Q->linker!=NULL)&&(Q->info!=x)){
       Q=Q->linker;
   }
   if(Q->info==x){
       T->info=data;
       T->linker=Q;
       R=Q->linkft;
       Q->linkft=T;
       if(head==Q){//In this condition makes that the beginning of the list
           head=T;//keep the data, which we want to add. And it won't us generate error
           T->linkft=NULL;
       }else{
           R->linker=T;
           T->linkft=R;
       }

   }else{
       printf("node not found");
   }
}
void dLinkedList::insertAfterOfX(KindData x, KindData data) {
    nodeType* Q=new nodeType;
    nodeType* T=new nodeType;
    nodeType* R=new nodeType;
    Q=head;

    while((Q->linker!=NULL)&&(Q->info!=x)){
        Q=Q->linker;
    }
    if(Q->info==x){
        T->info=data;
        T->linkft=Q;
        R=Q->linker;
        Q->linker=T;
        last=Q;
        if(last==Q){//In this condition makes that the end of the list
            last=T;//keep the data, which we want to add. And it won't us generate error
            T->linker=NULL;
        }else{
            T->linker=R;
            R->linkft=T;
        }

    }else{
        printf("node not found");
    }
}
//delete
bool dLinkedList::deleteFirst() {
    nodeType* Q=new nodeType;
    Q=head;
    if(Q->linker!=NULL){
        head=Q->linker;
        head->linkft=NULL;
    }else{
        head=NULL;
        last=NULL;
    }
    delete Q;
    return true;
}
bool dLinkedList::deleteLast() {
    nodeType* Q=new nodeType;
    Q=last;
    if(Q->linkft!=NULL){
        last=Q->linkft;
        last->linker=NULL;
    }else{
        last=NULL;
        head=NULL;
    }
    delete Q;
}
bool dLinkedList::deleteX(KindData x) {
    nodeType* Q=new nodeType;
    nodeType* R=new nodeType;
    nodeType* T=new nodeType;

    Q=head;
    while((Q->linker!=NULL)&&(Q->info!=x)){
        Q=Q->linker;
    }
    if(Q->info==x){
        if((Q==head)&&(Q==last)){//the list has only one node
            head=NULL;
            last=NULL;
        }else if(Q==head){//Is the first
            head=Q->linker;
            head->linkft=NULL;
        }else if(Q==last){//Is the last
            last=Q->linkft;
            last->linker=NULL;
        }else{
            T=Q->linkft;
            R=Q->linker;
            T->linker=R;
            R->linkft=T;
        }
        delete Q;
    }else{
        printf("node not found");
    }
}
bool dLinkedList::deleteBeforeX(KindData x) {
    nodeType* Q=new nodeType;
    nodeType* T=new nodeType;
    nodeType* R=new nodeType;
   Q=head;
   while((Q->linker!=NULL)&&(Q->info!=x)){
       Q=Q->linker;
   }
   if(Q->info==x){
       if(head==Q){
           printf("Impossible because there is not node before");
       }else{
           T=Q->linkft;
           if(head==T){
               head=Q;
               head->linkft=NULL;
           }else{
               R=T->linkft;
               Q->linkft=R;
               R->linker=Q;
           }
           delete T;
       }

   }else{
       printf("node not found");
   }
}
bool dLinkedList::deleteAfterX(KindData x) {
    nodeType* Q=new nodeType;
    nodeType* T=new nodeType;
    nodeType* R=new nodeType;
    Q=head;
    while((Q->linker!=NULL)&&(Q->info!=x)){
        Q=Q->linker;
    }
    if(Q->info==x){
        if(last==Q){
            printf("Impossible because there is not node after");
        }else{
            T=Q->linker;
            if(last==T){
                last=Q;
                last->linker=NULL;
            }else{
                R=T->linker;
                Q->linker=R;
                R->linkft=Q;
            }
            delete T;
        }

    }else{
        printf("node not found");
    }
}
void dLinkedList::display(){
    nodeType* current=head;
    while(current!=NULL){
        printf(" <-[-|%i|-]->",current->info);
        current=current->linker;
    }
}

