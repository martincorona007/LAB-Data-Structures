#include <iostream>
#include <stdio.h>
#include <stdlib.h>

using namespace std;

const int MAX=10;
int N=-1;
int V[MAX];

int sequentialSearchOrder(int);
void orderInsert(int);
void orderDelete(int);
void print();
void modificar(int,int);
int main(){
        int opc,x,y;
        do{
            printf("\n Arreglos ordenados\n");
            printf("1. Insertar \n");
            printf("2. Eliminar \n");
            printf("3. consultar \n");
            printf("4. modficar \n");
            printf("opcion ");
            cin>>opc;
            switch(opc){
            case 1:
                printf("numero a insetar ");
                cin>>x;
                orderInsert(x);
                break;
            case 2:
                printf("numero a insetar ");
                cin>>x;
                orderDelete(x);
                break;
            case 3:
                print();
                break;
            case 4:
                printf("numero  ");
                cin>>x;
                printf("por ");
                cin>>y;
                modificar(x,y);
                break;
                default: printf("\nerror 404");
            }
        }while(opc!=5);

}
void modificar(int x,int y){
	int I=0;
    int POS=0;
	POS=sequentialSearchOrder(x);
	if(POS>=0){
		orderDelete(x);
		orderInsert(y);
	} 
     
}
int sequentialSearchOrder(int x){
    int i;
    i=0;
    int POS=0; 
    while((i<=N)&&(V[i]<x))
        i++;

    if((i>N)||(V[i]>x))
        return POS=-i;
    else
        return POS= i ;

    //return POS;
}
void orderInsert(int y){
int POS=0;
int I=0;
    if(N<MAX){
        POS=sequentialSearchOrder(y);
        if(POS>0){
            cout<<"ya existe";
        }else{
            N=N+1;
            POS=POS*(-1);
            for(I=N;I>=POS+1;I--){
                V[I]=V[I-1];
            }
            
            V[POS]=y;
        }
    }else{
        cout<<"No hay expacio en el arreglo";
    }
}
void orderDelete(int x){
    int POS=0;
int I=0;
	if(N>=0){
        sequentialSearchOrder(x);
        if(POS<0){
            cout<<"el elemento no existe";

        }else{
            int i=0;
            while(i<=N&&x!=V[i]){
                i=i+1;
            }
            if(i>N){
                printf("didnt find");
            }else{
            for(I=i;I<N;I++){
                V[I]=V[I+1];
            }
            N=N-1;
            }
        }
     }else{
           printf("el arreglo esta vacio");
         }
}
void print(){
    for(int i=0;i<N+1;i++){
        cout<<"["<<V[i]<<"]";
    }
}
