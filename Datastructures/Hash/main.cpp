#include<iostream>
#include <stdio.h>
#include <ctime>
#include<stdlib.h>
#define N 10

using namespace std;
int hashiWithColision(int,int,int);
int primillo();
int lineal(int);
int h(int);
int x[N];
int main(){
    srand((unsigned)time(NULL));
    int n=0,value=0,index=0,index2=0,closeNumber=0;
    cout<<"How many elements? ";
    cin>>n;
    //closeNumber=primillo();
    //printf("Number close to %i is %i \n",N,closeNumber);

    for(int i=0;i<n;i++){
        cout<<"Write the element: ";
        cin>>value;//Element
        //closeNumber=primillo();
        int data=rand()%100+1;
        //index=hashiWithColision(n,value,closeNumber);//Index
        //x[i]=resultHashKEY;
        //index=h(value);//this will be a mistake
        index2=lineal(value);

        for(int k=0;k<N;k++){
            if(k==index2){
        //        lineal(index);
                x[k]=value;

            }

        }



        printf("\t   index1 %i \n",index);
        printf("\t   index2 %i \n",index2);
        printf("\t element %i\n",value);

    }

    //print

    for(int i=0;i<N+1;++i){

        printf("\n\t\t    h(k)     POS %i x[%i] \n",i,x[i]);
    }
}

int hashiWithColision(int n,int k,int coli){
    int haskey=0;
    for(int i=0;i<n;i++){
        haskey=k%coli+1;
    }
    return haskey;
}
int primillo(){
    int v[1000];
    int num,x,cont=0,maxi=0;

    for(num=2;num<=N;num++){
        for(x=2;x<=num;x++)
            if(num%x==0)
                cont++;
        if(cont==1)
            for(int i=0;i<N;i++){
                v[i]=num;
                if(v[i]>maxi){
                    maxi=v[i];


                }
            }
        cont=0;
    }
    // printf("maximo [%i]",maxi);

    return maxi;
}
int h(int k){
    int key=0;
    return (k%N)+1;
}
int lineal(int key){
    int D=0, DX=0,I=0;
    int aux=0;
    D=h(key);
    if((x[DX]!=0)&&(x[D]==key)){
        printf("information on pos %i",D);
    }else{
        DX=h(D);
        while ((DX<=N)&&(x[DX]!=0)&&(x[DX]!=key)&&(DX!=D)){
            DX=h(DX);
        }
        if((x[DX]==0)||(x[DX]!=key)){
            printf("info not on the array");
        }else{
            printf("info on pos %i",DX);
        }

    }
    return DX;
    /*printf(" %i ",D);
    if((x[DX]!=0)&&(x[D]==key)){
        printf("direction on %i",D);
    }else{
        I=1;
        DX=(D+(I*I));
            while ((x[DX]!=0)&&(x[DX]!=key)){
                I=I+1;
                DX=(D+(I*I));
                if(DX>N){
                    I=0;
                    DX=1;
                    D=1;
                }
            }

            aux=DX-1;
            printf(" *%i* ",aux);
            printf(" -%i-",DX);
            if (x[aux]==0){

                printf("information not array\n");
            }else{
                printf("information on pos %i \n",aux);
            }

    }
    return aux;
    */
   /* if((x[DX]!=0) && (x[D]==key)){
        printf("informacion esta en %i",D);
      }else {
            DX=D+1;
            while((DX<=N)&&(x[DX]!=0)&&(x[DX]!=key)&&(DX!=D)){
                DX=DX+1;
                if(DX==N+1){
                    DX=1;
                }

            }
            if((x[DX]==0)||(DX==D)){
                printf("information not found");
            } else{
                printf("information on the pos %i",DX);
            }
    }
    */
}
//does this change?
//copycopycopycopy