#include <iostream>
#include <stdio.h>
#define MAX 15
using namespace std;
typedef char TipoDato;

struct Pila{
    int Tope;
    TipoDato Elementos[MAX];

};

typedef struct Pila TipoPila;
void InicializarPila(TipoPila &P){
    P.Tope=-1;
}
bool PilaVacia(TipoPila P){
    //   if(P.Tope==-1)? return true; : return false;
    if(P.Tope==-1){
        return true;
    }else{
        return false;
    }
}
bool PilaLlena(TipoPila &P){
    if(P.Tope==MAX-1)
        return true;
    else
        return false;
}
void PonerPila(TipoPila &P,TipoDato X){
    if(PilaLlena(P)==true){
        printf("full stack");
        // system("Pause");
    }else{
        P.Tope++;
        P.Elementos[P.Tope]=X;

    }

}

char PopPila(TipoPila &P){
    TipoDato X;
    if(PilaVacia(P)==true){
        printf("Fullstack");
    }else{
        X=P.Elementos[P.Tope];
        P.Tope--;
    }
    return X;
}
void printt(TipoPila &P,int n){
    for(int i=0;i<n;i++){
        printf(" [%i] ",P.Elementos[i]);
    }
}



int main(){
    Pila k;

    char c;
    int n;
    printf("How many letters? ");
    scanf("%i",&n);
    InicializarPila(k);
    for(int i=0;i<n;i++){
        fflush(stdin);
        printf("%i write  ",i);
        scanf("%c",&c);

        PonerPila(k,c);
        //  k.Elementos=c;
    }

    while(k.Tope>=0){
        printf(" %c ",PopPila(k));
    }



    return 0;
}
