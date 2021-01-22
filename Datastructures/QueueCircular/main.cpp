#include <iostream>
#include <stdio.h>
#include <ctime>
#include <stdlib.h>
#define MAX 15
typedef int KindData;
using namespace std;

class QueueCircular{

private:
    KindData *V;
    int Front;//final of the Queue
    int Rear;//initial of the Queue

public:
    QueueCircular(int);
    ~QueueCircular();
    void enqueueCircular(KindData);
    KindData dequeueCircular();
    bool Full();
    bool Empty();
};

QueueCircular::QueueCircular(int x){
    Front=-1;
    Rear=-1;
    V=new int[MAX];
}
QueueCircular::~QueueCircular(){
    delete []V;
}
bool QueueCircular::Empty(){
    if(Rear==-1)
        return true;
    else
        return false;
}
bool QueueCircular::Full(){
    if(Rear==MAX-1)
        return true;
    else
        return false;
}
void QueueCircular::enqueueCircular(KindData X){

   if ((Front == 0 && Rear == MAX-1) ||(Rear == (Front-1)%(MAX-1))){
        printf("Queue is Full");
        return;
    }else if (Front == -1) {
        Front = Rear = 0;
        V[Rear] = X;
    }else if (Rear == MAX-1 && Front != 0){
        Rear = 0;
        V[Rear] = X;
    }else{
        Rear++;
        V[Rear] = X;
    }
}
KindData QueueCircular::dequeueCircular() {
    if (Front == -1){
        printf("\nQueue is Empty");
    }
    int data = V[Front];
    V[Front] = -1;
    if (Front == Rear){
        Front = -1;
        Rear = -1;
    }else if (Front == MAX-1)
        Front = 0;
    else
        Front++;

    return data;

}
int main(){

    int N;
    int n;
    srand((unsigned)time(NULL));
    cout<<"Queue Circular ";
    cout << "\nHow many data? ";
    std::cin>>n;
    QueueCircular k(n);
    for (int i = 0; i <=n ; ++i) {
        int data=rand()%100+1;
        printf("\n %i Data %i insert ",i,data);


        k.enqueueCircular(data);
    }
    printf("\n");
    while(!k.Empty()){
        printf(" [%i] ",k.dequeueCircular());
    }
    return 0;
}
