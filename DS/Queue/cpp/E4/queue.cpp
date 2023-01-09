
#include "queue.h"
#include <iostream>

    queue::queue(char c){
	    n=c;
	    s=0;
	
	    list=new char [n];
    }

    queue::~queue(){
    	delete [] list;
	}

    void queue::enqueue(char x){
    	if(!full()){
    		list[s++]=x;
		}
		else{
			printf("Full queue\n");
		}
	}
	
	char  queue::dequeue(){
	    if(!empty()){
	    	if(!empty()){
	    		char x= list[0];
	    		char i=0;
	    		s--;
	    		while(i<s){
	    			list[i]=list[i+1];
	    			i++;
				}
				return x;
			}
		}
		else{
			printf("Empty queue\n");
			
		}
	}

	char  queue::front(){
		if(!empty()){
			return list[0];
		}
		else{
			printf("Empty queue\n");
			return 0;
		}
	}
	
	char  queue::capacity(){return n;}
	
	char  queue::size(){return s;}
	
	void queue::clear(){s=0;}
	
	bool queue::empty(){return s==0;}
	
	bool queue::full(){
		if(s==n){return true;}
		else {return false;}
	}
