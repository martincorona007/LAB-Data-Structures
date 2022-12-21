#include "stack.hpp"
int main(){
	int d;	
		srand((unsigned)time(NULL));
				
		std::cout<<"Dynamic stack"<<std::endl;
		//std::cin>>d;
		d=rand()%10+5;		
		std::cout<<"size of the stack: "<<d<<std::endl;
				
		stackk obj(d);
		for(int i=0;i<d;i++){
			int data=rand()%100+1;
			std::cout<<" "<<i<<"["<<data<<"] "<<std::endl;
			obj.push(data);		
		
		}
		
		std::cout<<"top ["<<obj.top()<<"]"<<std::endl;
		
		while(!obj.empty()){
		std::cout<<" ["<<obj.pop()<<"]";
				
		}
		obj.~stackk();		

return 0;
}

