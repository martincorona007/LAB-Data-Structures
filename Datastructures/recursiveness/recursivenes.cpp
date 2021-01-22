#include <iostream>
#include <stdio.h>
#include <stdlib.h>
//#include <stdio_ext.h>//buffer to linux
#include <string.h>
using namespace std;
const int N=7;//array size

int A[N];// array n elements
int num;//yolo
char frase[80];
int a=1,p;
int fact(int);
int fibo(int);
int eucl(int,int);
int array_imp(int[],int);
void hanoi(int,char,char,char);
int palindromo(const char*cendena,int longitud);
int main(){
    int n=0,option,i=0,m;
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
                        while(i<n){
                          cout<<" ["<<fact(i)<<"]";
                           i++;
                        }

                    break;
                case 2:
                    cout<<"Ingrese un numero: ";
                      cin>>n;
                        while(i<n){
                          cout<<" ["<<fibo(i)<<"]";
                           i++;
                        }

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
                      cin>>n;

                          cout<<" ["<<eucl(m,n)<<"]";


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
                          fflush(stdin); //to windows
                        // 	__fpurge(stdin);// to linux
                         scanf("%c",&b);

                        printf("\n3 Varilla: ");
                          fflush(stdin); //to windows
                        // 	__fpurge(stdin);// to linux
                         scanf("%c",&c);
                           hanoi(n,a,b,c);

                    break;
                case 6:
       // do{
                        puts("Escribe una frase: ");
                        fflush(stdin);
                        gets(frase);
                        p=palindromo(frase,strlen(frase));
                        if(p==1){
                        printf("es un palindromo");

                        }else{
                        printf("no es un palindromo");
                        }

        //}while(strcmp(frase,"fin")!=0);





                    break;
                default: cout<<"\t\t\tERROR 404";
                }
    }while(option!=7);



    return 0;
}
int palindromo(const char *cadena ,int longitud){
 if(longitud<2)
 return 1;
 if(cadena[0]!=cadena[longitud-1])
 return 0;
 return palindromo(cadena+1,longitud-2);
}
int fact(int n){
    if(n==0||n==1){
        return 1;
    }else{
        return n*(n-1);
    }
}
int fibo(int n){
        if((n==0)||(n==1)){
            return n;
        }else{
            return fibo(n-1)+fibo(n-2);
        }
}
int eucl(int m,int n){
    if(n==0){
        return m;
    }else{
        return eucl(n,m%n);
    }
}
int array_imp(int a[],int n){
        if(n!=0){
           array_imp(a,n-1);
             printf("[%i]",a[n]);

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


/*
#include <stdio.h>

int main()
{
   char a, b, c;

   printf( "Introduzca primer caracter: " );
   scanf( "%c", &a );
   printf( "Introduzca segundo caracter: " );
   fflush( stdin );
   scanf( "%c", &b );
   printf( "Introduzca tercer caracter: " );
   fflush( stdin );
   scanf( "%c", &c );
   printf( "Los valores son: %c, %c, %c ", a, b, c );

   return 0;
}
*/
