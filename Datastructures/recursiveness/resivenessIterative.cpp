#include <iostream>
#include <stdio.h>
#include <stdlib.h>
//#include <stdio_ext.h>//buffer to linux
//#include <stdio_ext.h>
#include <string.h>
using namespace std;
const int N=7;//array size
int A[N];// array n elements
int num,op;//yolo
char word[20];

int fact(int);
int fibo(int);
int eucl(int,int);
int array_imp(int[],int);
void hanoi(int,char,char,char);
void Palindromo(int);
int main(){
    int n=0,option,i=0,m,nn,paltam;
    char a,b,c;
    do{
        cout<<"\n-----MENU------";
        cout<<"\n 1.Factorial ";
        cout<<"\n 2.Fibonacci ";
        cout<<"\n 3.ImprimeArreglo ";
        cout<<"\n 4.Euclides ";
        cout<<"\n 5.Torres de hanoi";
        cout<<"\n 6.Palindromo ";
        cout<<"\n Opcion: ";
          cin>>option;


                switch(option){
                case 1:
                    cout<<"Ingrese un numero: ";
                      cin>>n;
                          fact(n);
                    break;
                case 2:
                    cout<<"Ingrese un numero: ";
                      cin>>n;
                          fibo(n);

                    break;
                case 3:

                        for(int i=1;i<=N;i++){
                            cout<<"Escribe un numero: ";
                            cin>>num;
                            A[i]=num;
                        }
                        array_imp(A,N);

                    break;
                case 4:
                    cout<<"Ingrese M: ";
                      cin>>m;
                    cout<<"Ingrese N: ";
                      cin>>nn;

                          cout<<" ["<<eucl(m,nn)<<"]";


                    break;
                case 5:
                    cout<<"\nTorres Hanoi";
                    cout<<"\nVarillas A B C";

                        printf("\nNumero de discos: ");

                         scanf("%i",&n);

                         printf("\n1 Varilla: ");
                            fflush(stdin); //to windows
                         //	__fpurge(stdin);// to linux
                         scanf("%c",&a);
                        printf("\n2 Varilla: ");
                          fflush(stdin);// to windows
                         	//__fpurge(stdin);// to linux
                         	scanf("%c",&b);
                        printf("\n3 Varilla: ");
                        fflush(stdin); //to windows
                         //	__fpurge(stdin);// to linux
                         	scanf("%c",&c);
                           hanoi(n,a,b,c);

                    break;
                case 6:

                        cout<<"Escribe una frase: ";
                          cin>>word;
                          paltam=strlen(word);
                          Palindromo(paltam);






                    break;
                default: cout<<"\t\t\tERROR 404";
                }
    }while(option!=7);



    return 0;
}
void Palindromo(int sizee){
       for(int i=0;i<sizee;i++){
        if(word[i]==word[(sizee-i)-1]){
            op=0;
        }else{
            op=1;
            break;
        }
       }
       if(op==0){
        cout<<"Es palindromo";
       }else{
        cout<<"No Es palindromo";
       }
       // return 0;
}
int fact(int NF){

    int FACT=1;
        while(NF>0){
        	      //n  //1
            FACT=NF*FACT;
            NF=NF-1;
        }

        printf("Factorial [%i]",FACT);
}
int fibo(int NFA){
    int FIBO,FIBA,FIBB,I;
       if(NFA==0||NFA==1){
        FIBO=NFA;
       }else{
        FIBA=0;
        FIBB=1;
        I=2;
       }
       while(I<=NFA){
            FIBO=FIBB+FIBA;
            FIBA=FIBB;
            FIBB=FIBO;
            I=I+1;
       }
        printf("Fibonacci [%i]",FIBO);
}
int eucl(int m,int n){

    while(m!=n){
        if(m>n){
           m=m-n;
            //m=m-n;
        }else{
            n=n-m;

        }



    }
    return m;
}

int array_imp(int a[],int n){
    for(int i=1;i<=n;i++){
         printf("[%i]",a[i]);
    }

}
                    //origen       destino        auxiliar
void hanoi(int n,char inicial,char central,char finall){
          if(n==1){
            printf("\nMover disco de %c -> %c",inicial,finall);
          }else{
            hanoi(n-1,inicial,finall,central);
            printf("\nMover disco de %c -> %c",inicial,finall);
            hanoi(n-1,central,inicial,finall);
          }

}







