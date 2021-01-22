#include <stdio.h>
int main(){
	printf("hello");
	for(int i=0;i<10;i++){
		
		if(i<=5){
			printf("\na1 %i",i);
		}else{
			printf("\nz1 %i",i);
		}
		switch(i){
			case 1:
				printf("\n\tb1 %i",i);
			break;
			case 2:
				printf("\n\tb2 %i",i);
			break;
			case 3:
				printf("\n\tb3 %i",i);
			break;
			case 4:
				printf("\n\tb4 %i",i);
			break;
			case 5:
				printf("\n\tb5 %i",i);
			break;	
		}
	}
}
