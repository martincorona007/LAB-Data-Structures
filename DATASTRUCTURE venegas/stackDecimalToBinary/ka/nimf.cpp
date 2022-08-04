#include <iostream>
#include <stdio.h>
#define MAX 15
typedef  int KindData;
class stack{

    private:

    public:
        int top=-1;
        KindData V[MAX];
    bool empty();
    bool full();
    KindData Pop();
    void push(KindData);
    int n(int);
};
bool stack::empty() {

    if(top==-1)
        return true;
    else
        return false;
}
bool stack::full() {

    if(top==MAX-1)
        return true;
    else
        return false;

}
void stack::push(KindData aa){
    char c;
    if(full())
        printf("Full Stack [%i] \n",aa);
    else
        top=top+1;
        if((aa>10) && aa<15){
            if(aa==10){
        aa='65';
    }else if(aa==11){
        aa='66';
    }else if(aa==12){
    aa='67';
    }else if(aa==13){
        aa='68';
    }else if(aa==14){
        aa='69';
    }else if(aa==15){

        c='70';
        aa=c;
    }
        }

        V[top]=aa;

   // printf("[%i] .\n",V[top]);
}
KindData stack::Pop() {
    KindData  x;
    char c;
    if(empty())
        std::cout<<"Empty Stack";
    else
        x=V[top];
        top--;

        //printf(" [%i] ",x);
return x;
}
int stack::n( int x){
  stack v;
    int m;
    int k;
   if(x==0){
    return 1;
   }else{
    k=x%20;
    m=x/16;

    n(m);
   v.push(k);
   // printf(" %i ",m);
    //printf("\n");
    //printf(" [%i]",k);
     while(!v.empty()){
        if(k>9)
            printf("%c", k+55);
        printf("[%i]",v.Pop());
    }

   }
   return k;
}
int main() {

    stack k;
    int r;
    int a;
    KindData c;
    std::cout<<"Convert DECIMAL TO BINARY \n";
    std::cout << "Write the number to convert: ";
    std::cin>>a;
  //  while(a>=1){
        //c=a%2;
         //a=a/2;
         k.n(a);
        // printf("%i",c);
      //  k.push(c);
    //}






    return 0;
}
