#include "queuee.hpp"
method::method(int si){
    n=si;
    r=0;
    x=new int[n];
}
method::~method(){
    delete []x;
}
void method::enqueue(int q){
    if(full())
        std::cout<<"Queue full"<<std::endl;
    else

       x[r++]=q;

}
int method::dequeue(){
    if(emptyy()){
        std::cout<<"Queue empty";
    }else{
        int i=0;
        int nu=x[0];
        r--;
        while(i<r){
            x[i]=x[i+1];
            i++;
        }
        return nu;

    }
}
int method::frontt(){
    return x[0];
}
int method::rear(){
    return x[r-1];
}

int method::sizee(){
    return n;
}
bool method::full(){
     return r==n;
}
bool method::emptyy(){
    return r==0;
}

