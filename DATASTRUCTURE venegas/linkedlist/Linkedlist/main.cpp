#include <iostream>
#include <stdio.h>
#include <stdlib.h>
#include <ctime>
using namespace std;
typedef int KindData;
struct nodeType{
    KindData info;
    nodeType* link;
};
class node{

private:
    nodeType* head;

public:

    node(){
        head=NULL;
    }

    ~node(){
        delete head;
    }
    bool deleteBeforeX(int);
    bool deleteWithInformationX(int);
    void deleteLast();
    void deleteFirst();
    void insertFirst(int);
    void insertLast(int);
    void insertBeforeOfX(int,int);
    void insertAfterOfX(int,int);
    void destroylist();

    void executionDeleteBeforeX();
    void executionDeleteWithInformationX();
    void executionDeleteLast();
    void executionDeleteFirst();
    void askInsertAfterOfX();
    void askinsertBeforeOfX();
    void askInsertFirst();
    void askInsertLast();
    void disply();
    bool isEmpty();

};
//Delete
bool node::deleteBeforeX(int x){
    nodeType* Q=new nodeType;
    nodeType* T=new nodeType;
    nodeType* R=new nodeType;
    int BAND;
    if(head->info==x){
        printf("Node not found");
        return false;
    }else{
        Q=head; T=head; BAND=1;
      while((Q->info!=x)&&(BAND==1)){
        if(Q->link!=NULL){
            R=T;
            T=Q;
            Q=Q->link;
        }else{
            BAND=0;
        }
      }
      if(BAND==0){
        printf("element [%i]-> not found\n\n",x);
        return false;
      }else{
        if(head->link==Q){
            head=Q;
        }else{
            R->link=Q;
        }
        delete T;
        return true;
      }

    }
}
bool node::deleteWithInformationX(int x){
    nodeType* Q=new nodeType;
    nodeType* T=new nodeType;
    int BAND;
    Q=head; BAND=1;
    while((Q->info!=x)&&(BAND==1)){//pointer Q travel until fund the value x.
        if(Q->link!=NULL){//if the pointer of Q is NULL T point Q.
            T=Q;
            Q=Q->link;
        }else{
            BAND=0;
        }
    }
    if(BAND==0){
        printf("node with information not found");
        return false;//return false if is not found, So it dosen't print the list.
    }else{
        if(head==Q){//check if the element to delete is the first one.
            head=Q->link;//head point to Q.
        }else{
            T->link=Q->link;//Once if delete T point to Q.
        }
        delete Q;
        return true; //return false if is delete So it will print the list.
    }

}
void node::deleteFirst(){
    nodeType* Q=new nodeType;
    Q=head;//pointer Q point to likedList's first
    head=Q->link;//head point to Q for delete the first node
    delete Q;//delete
}
void node::deleteLast(){
    nodeType* Q=new nodeType;
    nodeType* T=new nodeType;
    Q=head;
    if(head->link==NULL){
        head=NULL;
    }else{
        while(Q->link!=NULL){
            T=Q;
            Q=Q->link;
        }
        T->link=NULL;
    }
    delete Q;
}
//Insert
void node::insertAfterOfX(int x, int data){
    nodeType* Q=new nodeType;//newNode
    nodeType* T=new nodeType;//pointer to the new node, witch going to add to the list
    int BAND;
    Q=head; BAND=1;
    while((Q->info!=x)&&(BAND==1)){//checking the info different of x in each node
        if(Q->link!=NULL){//pointing to the end of the list
            Q=Q->link;//pointer to the next node
        }else{
            BAND=0;//if the data x is not found return 0
        }
    }
    if(BAND==1){
        T->info=data;//add new value with X
        T->link=Q->link;//                             -> Q [ |-]->
        Q->link=T;//   Pointer  to Q [ |-]->  T [ |-]->
    }else{
        printf("node not found \n");
    }
}
void node::insertBeforeOfX(int x,int dato){
        nodeType* Q=new nodeType;//newNode
        nodeType* X=new nodeType;//pointer to node between T and Q (dato)
        nodeType* T=new nodeType;//pointer to the node with (data) before X
        int BAND;
        Q=head; BAND=1;
        while((Q->info!=x)&&(BAND==1)){//checking the info different of x in each node
            if(Q->link!=NULL){//pointing to the end of the list
                T=Q;//pointer to the node with (data) before X
                Q=Q->link;//pointer to the next node
            }else{
                BAND=0;//if the data x is not found return 0
            }
        }
        if(BAND==1){
            X->info=dato;//add new value with X
            if(head==Q){//checking if head is equals to Q
                X->link=head;//X point to List's head
                head=X;//add new node to the list
            }else{
                T->link=X;//T point to X->
                X->link=Q;//              | dato |-|> X point to Q
            }
        }else{
            printf("node not found\n");
        }
}
void node::insertLast(int data){
 //  nodeType* newNode=new nodeType;//p
 //  nodeType* Temp=new nodeType;//r
    nodeType* T=new nodeType;//point to the end of the list
     nodeType* Q=new nodeType;//newNode


     T=head;//point to the list
     Q->info=data;//new node
     Q->link=NULL;//new node ->null

     if(head==NULL){
       head=Q;//add a new node
     }else{
         while(T->link!=NULL){// T pass until found NULL
            T=T->link;// next next next
         }
     T->link=Q;//point to the end of the list

     }
  //  printf("first %i ",*first);
  //  printf("new node %i ",*newNode);
  //  printf("last %i ",*last);
}
void node::insertFirst(int data) {
    nodeType* newNode=new nodeType;
    newNode->info=data;
    newNode->link=head;
    head=newNode;
//printf("head %i ",*head);
//printf("new node %i ",*newNode);
}

//operations
void node::executionDeleteBeforeX(){
       int n,d;
    bool A;
    srand((unsigned)time(NULL));
    node k;
    std::cout<<"\n->Delete node before with information X<-"<<endl;
    std::cout<<"How many elements? ";
    std::cin>>n;
    for(int i=0;i<n;i++){
        //Insert aleatory
        int data=rand()%100+1;
        printf("\nData insert %i[%i]   ",i,data);
        k.insertFirst(data);
        //Insert data by data
  /*
         printf("\nvalue: ");
         std::cin>>aux;
         printf("\nData insert %i[%i]   ",i,aux);
         k.insertLast(aux);
*/
        k.display();
    }
     printf("\n\n");
    k.display();
        printf("\n\nNode to delete: ");
        std::cin>>d;
        A=k.deleteBeforeX(d);

        if(A==true){
            printf("\n\nNode deleted: ");
            printf("\n");
            k.display();
            printf("\n");
        }

}
void node::executionDeleteWithInformationX(){
      int n,d;
    bool A;
    srand((unsigned)time(NULL));
    node k;
    std::cout<<"\n->Delete node with information X<-"<<endl;
    std::cout<<"How many elements? ";
    std::cin>>n;
    for(int i=0;i<n;i++){
        //Insert aleatory
        int data=rand()%100+1;
        printf("\nData insert %i[%i]   ",i,data);
        k.insertFirst(data);
        //Insert data by data
  /*
         printf("\nvalue: ");
         std::cin>>aux;
         printf("\nData insert %i[%i]   ",i,aux);
         k.insertLast(aux);
*/
        k.display();
    }
    printf("\n\n");
    k.display();
        printf("\n\nNode with information to delete: ");
        std::cin>>d;
        A=k.deleteWithInformationX(d);

        if(A==true){
            printf("\n\nNode deleted: ");
            printf("\n\n");
            k.display();

        }else{
            printf("");
        }
    printf("\n\n");

}
void node::executionDeleteLast(){
     int n;
    srand((unsigned)time(NULL));
    node k;
    std::cout<<"\n->Delete Last node<-"<<endl;
    std::cout<<"How many elements? ";
    std::cin>>n;
    for(int i=0;i<n;i++){
        //Insert aleatory
        int data=rand()%100+1;
        printf("\nData insert %i[%i]   ",i,data);
        k.insertFirst(data);
        //Insert data by data
  /*
         printf("\nvalue: ");
         std::cin>>aux;
         printf("\nData insert %i[%i]   ",i,aux);
         k.insertLast(aux);
*/
        k.display();
    }
    printf("\n\n");
    k.display();
        printf("\n\nNode deleted: ");
        k.deleteLast();

    printf("\n\n");
    k.display();
    printf("\n\n");
}
void node::executionDeleteFirst(){
    int n;
    srand((unsigned)time(NULL));
    node k;
    std::cout<<"\n->Delete First node<-"<<endl;
    std::cout<<"How many elements? ";
    std::cin>>n;
    for(int i=0;i<n;i++){
        //Insert aleatory
        int data=rand()%100+1;
        printf("\nData insert %i[%i]   ",i,data);
        k.insertFirst(data);
        //Insert data by data
  /*
         printf("\nvalue: ");
         std::cin>>aux;
         printf("\nData insert %i[%i]   ",i,aux);
         k.insertLast(aux);
*/
        k.display();
    }
    printf("\n\n");
    k.display();
        printf("\n\nNode deleted: ");
        k.deleteFirst();

    printf("\n\n");
    k.display();
    printf("\n\n");
}
void node::askInsertAfterOfX(){
    int n,N,NN;
    srand((unsigned)time(NULL));
    node k;
    std::cout<<"\n->Insert after of X<-"<<endl;
    std::cout<<"How many elements? ";
    std::cin>>n;
    for(int i=0;i<n;i++){
        //Insert aleatory
        int data=rand()%100+1;
        printf("\nData insert %i[%i]   ",i,data);
        k.insertLast(data);
        //Insert data by data
  /*
         printf("\nvalue: ");
         std::cin>>aux;
         printf("\nData insert %i[%i]   ",i,aux);
         k.insertLast(aux);
*/
        k.display();
    }
     printf("\n\n");
    k.display();
     printf("\n");
        printf("\nSelect number: ");
        std::cin>>N;
        printf("Remplace by: ");
        std::cin>>NN;
        k.insertAfterOfX(N,NN);

     printf("\n");
    k.display();
    printf("\n\n");
}
void node::askinsertBeforeOfX(){
int n,N,NN;
    srand((unsigned)time(NULL));
    node k;
    std::cout<<"\n->Insert before of X<-"<<endl;
    std::cout<<"How many elements? ";
    std::cin>>n;
    for(int i=0;i<n;i++){
        //Insert aleatory
        int data=rand()%100+1;
        printf("\nData insert %i[%i]   ",i,data);
        k.insertLast(data);
        //Insert data by data
  /*
         printf("\nvalue: ");
         std::cin>>aux;
         printf("\nData insert %i[%i]   ",i,aux);
         k.insertLast(aux);
*/
        k.display();
    }
     printf("\n\n");
    k.display();
     printf("\n");
        printf("\nSelect number: ");
        std::cin>>N;
        printf("Remplace by: ");
        std::cin>>NN;
        k.insertBeforeOfX(N,NN);

     printf("\n");
    k.display();
    printf("\n\n");

}
void node::askInsertLast(){
    int n;
    srand((unsigned)time(NULL));
    node k;
    std::cout<<"\n->Insert Last<-"<<endl;
    std::cout<<"How many elements? ";
    std::cin>>n;
    for(int i=0;i<n;i++){
        //Insert aleatory
        int data=rand()%100+1;
        printf("\nData insert %i[%i]   ",i,data);
        k.insertLast(data);
        //Insert data by data
  /*
         printf("\nvalue: ");
         std::cin>>aux;
         printf("\nData insert %i[%i]   ",i,aux);
         k.insertLast(aux);
*/
        k.display();
    }
    printf("\n\n");
    k.display();
    printf("\n\n");
}
void node::askInsertFirst(){
    int n;
    srand((unsigned)time(NULL));
    node k;
    std::cout<<"\n->Insert First<-"<<endl;
    std::cout<<"How many elements? ";
    std::cin>>n;
    for(int i=0;i<n;i++){
        //Insert aleatory
        int data=rand()%100+1;
        printf("\nData insert %i[%i]   ",i,data);
        k.insertFirst(data);
        //Insert data by data
  /*
         printf("\nvalue: ");
         std::cin>>aux;
         printf("\nData insert %i[%i]   ",i,aux);
         k.insertLast(aux);
*/
        k.display();
    }
    printf("\n\n");
    k.display();
    printf("\n\n");
}

bool node::isEmpty(){

    return (head==NULL);
}
void node::display() {

    nodeType* current=head;//current as aux start with the first node
    while(current!=NULL){
        printf(" [%i|—]->",current->info);

        //printf(" [%i|—]→",current->info);
        current=current->link;
    }
}
void node::destroylist() {


}

int main() {
    int n,aux,op,N,NN,d;
    bool A;
 srand((unsigned)time(NULL));
    node k;

    do{
      printf("\t\tLinked List Operations\n1. Insert at the beginning\n2. Insert at the end\n3. Insert before of X\n4. Insert after of X\n5. Delete first node\n6. Delete Last node\n7. Delete node with information X\n8. Delete node before with information X\n Option: ");

      std::cin>>op;
        switch(op){
        case 1:k.askInsertFirst();
            break;
        case 2:k.askInsertLast();
            break;
        case 3:k.askinsertBeforeOfX();
            break;
        case 4:k.askInsertAfterOfX();
            break;
        case 5:k.executionDeleteFirst();
            break;
        case 6:k.executionDeleteLast();
            break;
        case 7:k.executionDeleteWithInformationX();
            break;
        case 8:k.executionDeleteBeforeX();
            break;
        default:
            std::cout<<"Option incorrect"<<std::endl;
        }
    }while(op!=9);
/*


    std::cout<<"Linked List"<<endl;;
    std::cout<<"How many elements? ";
    std::cin>>n;
    for(int i=0;i<n;i++){

        int data=rand()%100+1;
        printf("\nData insert %i[%i]   ",i,data);
        k.insertFirst(data);
*/



  /*
      printf("\nvalue: ");
         std::cin>>aux;
        printf("\nData insert %i[%i]   ",i,aux);
        k.insertLast(aux);
*//*
        k.display();
    }
    printf("\n\n");
    k.display();
        printf("\n\nNode to delete: ");
        std::cin>>d;
        A=k.deleteBeforeX(d);

        if(A==true){
            printf("\n\nNode deleted: ");
            printf("\n\n");
            k.display();

        }else{
            printf("");
        }
*/
    return 0;
}
