#include "stacks.hpp"
int main()
{
    srand((unsigned)time(NULL));

    int n;
    std::cout<<"How many data? ";
    std::cin>>n;
        stacks obj(n);

        for(int i=0;i<n;i++){
            int data=rand()%100+1;

            std::cout<<" "<<i<<" "<<" ["<<data<<"] "<<std::endl;
            obj.push(data);
        }

        std::cout<<std::endl;
        std::cout<<"Size "<<obj.sizee()<<std::endl;
        std::cout<<"Top "<<obj.top()<<std::endl;
        std::cout<<"Extraction "<<std::endl;
        while(!obj.emptyy()){
            printf(" [%i] ",obj.pop());
        }
    obj.~stacks();
    return 0;
}
