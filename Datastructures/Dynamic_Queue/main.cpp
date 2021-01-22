#include "queue.h"
int main() {

    srand((unsigned)time(NULL));

    queue p(10);

    int n=rand()%11+5;
    printf("I going to add %i data ",n);

    for(int i=0;i<n;i++){
        int data=rand()%100+1;
        printf("\n Adding: %i",data);
        p.enqueue(data);

    }

    printf("\n\n");
    printf("\nfront: %i",p.front());
    printf("\nExtraction data\n");
    printf("Is going to be add %i\n",p.size());
    while(!p.empty()){
        printf("[%i] -> ",p.dequeue());
    }


    return 0;
}