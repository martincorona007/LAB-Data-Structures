#include "stacks.hpp"
stacks::stacks(int t){
    _s=t;
    a=new int[_s];
    s=0;
}
stacks::~stacks(){
    delete[]a;
}
void stacks::push(data da){
    if(full()){
        std::cout<<"Stack full"<<std::endl;
    }else{
        a[s++]=da;
    }
}
int stacks::pop(){
    if(emptyy()){
        std::cout<<"Stack empty"<<std::endl;
    }else{
        return a[--s];

    }
}
int stacks::top(){
    if(emptyy()){
        std::cout<<"Empty stack"<<std::endl;
    }else{
        return a[s-1];
    }
}
int stacks::sizee(){
    return _s;
}
bool stacks::emptyy(){
    if(s==0)
        return true;
    else
        return false;
}
bool stacks::full(){
    if(_s==s){
        return true;
    }else{
        return false;
    }
}

