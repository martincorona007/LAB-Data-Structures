#include <iostream>
#include <stdio.h>

#include <ctime>
#include <stdlib.h>
#define MAX 15
typedef int KindData;
using namespace std;
class Queue{

  private:
    KindData *V;
    KindData Rear;
    KindData Front;
  public:
      Queue(int);
      ~Queue();
    void enqueue(KindData);
    KindData dequeue();
    bool full();
    bool Empty();

};
Queue::Queue(int s){
    Front=s;
    Rear=0;
    V=new int[Front];
}
Queue::~Queue(){
    delete []V;
}
void Queue::enqueue(KindData x){
    if(Rear<MAX){
        Rear++;
        V[Rear]=x;
       if(Rear==1){
            Front=1;
       }
    }else{
        std::cout<<"Full Queue \n";

    }
  //printf(" >%i< ",V[Rear]);
}
KindData Queue::dequeue(){
        KindData X;
        if(Front!=-1){
            X=V[Front];
            if(Front==Rear){
                Front=-1;
                Rear=-1;
            }else{
                Front++;
            }
        }else{
            std::cout<<"Empty Queue";
        }
    return X;
}
bool Queue::full(){
    if(Front==MAX-1)
            return true;
        else
            return false;
}
bool Queue::Empty(){
    if(Rear==-1)
        return true;
    else
        return false;
}

int main(){
srand((unsigned)time(NULL));
    KindData n,N;
    cout << "Queue" << endl;
    cout<<"How many elements? ";
    std::cin>>n;
     Queue k(n);
        for(int i=0;i<n;i++){
        int data=rand()%100+1;
            printf("\nWrite the element %i : [%i]",i,data);
            //std::cin>>N;
            k.enqueue(data);
        }
        while(!k.Empty()){
            printf(" [%i] ",k.dequeue());
        }


    return 0;
}
