#include <iostream>

using namespace std;

void ordenamiento(char[], int);
bool comparar(char[], char[], int);

int main() {

    char palabra1[20];
    char palabra2[20];

    cout<<"Palabra 1: ";
    cin>>palabra1;
    cout<<"Palabra 2: ";
    cin>>palabra2;

    int i=0, j=0;
    for(i; i<20; i++){
        if(palabra1[i]=='\0')
            break;
    }
    for(j; j<20; j++){
        if(palabra2[j]=='\0')
            break;
    }

    if(i!=j){
        cout<<"Palabra de diferente tamanio"<<endl;
        return 0;
    }
    ordenamiento(palabra1, i);
    ordenamiento(palabra2, j);
    cout<<comparar(palabra1, palabra2, i);
    return 0;
}

void ordenamiento(char a[], int t){
    int i=0;
    while(i<t){
        int j=i+1;
        while(j<t){
            if((int)a[i]>(int)a[j])
                swap(a[i], a[j]);
            j++;
        }
        i++;
    }

}

bool comparar(char a[], char b[], int t){

    for(int i = 0; i<t;i++){
        if(a[i]!=b[i])
            return false;
    }
    return true;

}

