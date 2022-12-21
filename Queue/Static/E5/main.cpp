#include "queuee.hpp"
int main()
{
    srand((unsigned)time(NULL));
    int d;
    std::cout << "How many data?";
    std::cin>>d;
    method obj(d);
    for(int i=0;i<d;i++){
        int data=rand()%100+1;
        std::cout<<" ["<<data<<"] "<<std::endl;
        obj.enqueue(data);
    }


    std::cout<<"Rear "<<obj.rear()<<std::endl;
    std::cout<<"Front "<<obj.frontt()<<std::endl;
    std::cout<<"Size "<<obj.sizee()<<std::endl;
    while(!obj.emptyy()){
        printf(" [%i] ",obj.dequeue());
    }
    obj.~method();
    return 0;
}
