#include <iostream>
#include "queue.h"
#include <cstdio>
#include <cstdlib>
using namespace std;

int main() {
	
	srand(time(NULL));
    queue c(26);
    
    
    for(int i = 0; i < 26; i++){
        data = 'a' + rand() % (('z' - 'a') + 1);
 
        int aux2 = 0;
 
        while(aux2 < i){
 
            if(data != c[aux2])
                aux2++;
 
            else{
                    data = 'a' + rand() % (('z' - 'a') + 1);
                    aux2 = 0;
 
                }
        }
 
        arreglo[i] = data;
 
        cout << arreglo[i] << "\n";
    }
    
    
   /* char n = 26;
    printf("Se van a agregar %i datos:\n\n", n);
    for (int i=0; i<n;i++){
    	char data='a' + rand() % (('z' - 'a') + 1);
    	printf(" %c", data);
    	c.enqueue(data);
	}
	
		printf("\nExtraccion de datos\n\n");
			printf("Se insertaron %c datos: ", c.size());

    while(!c.empty()){
    		printf("%c ", c.dequeue());
	}    
    printf("\n");*/
    
    
    
    return 0;
}


