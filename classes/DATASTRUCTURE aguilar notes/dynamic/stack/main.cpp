
#include "stack.hpp"
int main() {
    srand((unsigned)time(NULL));

    stack sta(10);

    int s=rand()%40+1;
    printf("It's going to add %i data ",s);

    for(int x=0;x<s;x++){
        int data=rand()%100+1;
        printf("\n Adding %i",data);
        sta.push(data);
    }
            printf("\n\n");
            printf("\nTop Background: %i",sta.top());
            printf("\nExtraction data\n");
            printf("Is going to be add %i\n",sta.size());
            while(!sta.empty()){
                printf("[%i] -> ",sta.pop());
            }


	return 0;
}
