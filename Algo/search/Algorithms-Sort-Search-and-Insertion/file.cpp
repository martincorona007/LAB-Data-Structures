#include "file.hpp"
file::file(int t){
    _s=t;
    V=new int[_s];
    generator();

}
file::file(){
}
file::~file(){
delete[]V;
}
void file::generator(){
    srand(time(NULL));
    for(int i=0;i<_s;i++){
        V[i]=rand()%100+1;
        printf("[%i]",V[i]);
    }
}
void file::print(){
    for(int i=0;i<_s;i++){
        printf(" [%i] ",V[i]);
    }
}

void file::swapp(int *n1,int *n2){
    int temp=*n1;
        *n1=*n2;
        *n2=temp;
}

void file::bubbleSort(){
        int i=0,j=0;
        j=1;
        while(j<=_s){
            i=0;
            while(i<=_s-j-1){
                if(V[i]>V[i+1]) swapp(&V[i],&V[i+1]);
                i++;
            }
            j++;
        }

}
void file::shakerSort(){
        for (int i = 0; i < _s/2; i++) {
        bool swapped = false;
        for (int j = i; j < _s - i - 1; j++) {
            if (V[j] < V[j+1]) {
                int tmp = V[j];
                V[j] = V[j+1];
                V[j+1] = tmp;
                swapped = true;
            }
        }
        for (int j = _s - 2 - i; j > i; j--) {
            if (V[j] > V[j-1]) {
                int tmp = V[j];
                V[j] = V[j-1];
                V[j-1] = tmp;
                swapped = true;
            }
        }
        if(!swapped) break;
    }

}
void file::mergeSort(){
    mergeSortt(V,0,_s-1);
}
void file::mergeSortt(int arr[],int left,int right){
   if (left < right){
        // Same as (l+r)/2, but avoids overflow for
        // large l and h
        int midle = left+(right-left)/2;

        // Sort first and second halves
        mergeSortt(arr, left, midle);
        mergeSortt(arr, midle+1, right);

        mergee(arr, left, midle, right);
    }
}
void file::mergee(int theArray[], int left, int middle, int right){
    int i, j, k;
    int n1 = middle - left + 1;
    int n2 =  right - middle;

    // create temp arrays
    int Left[n1],Right[n2];

    // Copy data to temp arrays L[] and R[]
    for (i = 0; i < n1; i++)
        Left[i] = theArray[left + i];
    for (j = 0; j < n2; j++)
        Right[j] = theArray[middle + 1+ j];

    /* Merge the temp arrays back into arr[l..r]*/
    i = 0; // Initial index of first subarray
    j = 0; // Initial index of second subarray
    k = left; // Initial index of merged subarray
    while (i < n1 && j < n2) {
        if (Left[i] <= Right[j]) {
            theArray[k] = Left[i];
            i++;
        }else{
            theArray[k] = Right[j];
            j++;
        }
        k++;
    }

    //copy the elements of left to theArray
    while (i < n1) {
        theArray[k] = Left[i];
        i++;
        k++;
    }

    //copy the elements of right to theArray
    while (j < n2){
        theArray[k] = Right[j];
        j++;
        k++;
}

}
void file::quickSort(){
   quickSortt(V,0,_s);
}
void file::quickSortt(int a[],int left,int right){
     int i=0,j=0,pivot=0;
    pivot=V[(left+right)/2];
    i=left;
    j=right;
    do{
        while(a[i]<pivot)i++;
        while(pivot<a[j])j--;
        if(i<=j){
            swapp(&a[i],&a[j]);
            i++;
            j--;
        }

    }while(i<=j);
    if(left<j) quickSortt(a,left,j);
    if(i<right) quickSortt(a,i,right);
}
void file::selectionSort(){
    int minn,i,j;
    for(i =0 ; i <_s-1 ; i++) {
        minn=i;
        for (j = i+1; j <_s ; j++)

            if (V[j]<V[minn])
                minn=j;
        swapp(&V[minn],&V[i]);

    }

}
void file::shellSort(){

    int i,j,inc,temp=0;

        for (inc = 1; inc <_s ; inc=inc*3+1);
            while(inc>0){
                for (i =inc; i <_s ; i++) {
                    j=i;
                    temp=V[i];
                     while((j>=inc)&&(V[j-inc]>temp)){
                         V[j]=V[j-inc];
                         j=j-inc;
                     }
                     V[j]=temp;
                }
                inc/=2;
        }

}
void file::inserSort(){

    int fir=0,location=0,temp=0;

    for(fir=1;fir<_s;fir++){

        if(V[fir]<V[fir-1]){
            temp=V[fir];
            location=fir;

            do{
                V[location]=V[location-1];
                location--;
            }while(location>0 && V[location-1]> temp);
            V[location]=temp;
        }
    }

}
void file::insertBinary(){

    int i,aux,izq,j,der,m;

        for(i=1;i<_s;i++){
            aux=V[i];
            izq=0;
            der=i-1;
            while(izq<=der){
                m=(izq+der)/2;
                if(aux<=V[m]){
                    der=m-1;
                }else{
                    izq=m+1;
                }
            }
            j=i-1;
            while(j>=izq){
                V[j+1]=V[j];
                j=j-1;
            }
            V[izq]=aux;
        }
}
void file::secuentialSearch(){

    int localization,item=0;
    bool found=false;
    std::cout<<"\nNumber to search: ";
    std::cin>>item;
    for (localization = 0; localization <_s ; localization++) {
        if(V[localization]==item){
            found=true;
            break;
        }

    }
    if(found)
        printf("found");
    else
        printf("not found");

}
void file::binarySearch(){

//The list needs to be sorted first. So  I use insertSort to order the list
    inserSort();print();

    int searchItem=0,first=0,mind=0;
    int last=_s-1;
    bool found=false;

    std::cout<<"\n Number to search: ";
    std::cin>>searchItem;
    while(first<=last & !found){
        mind=(first+last)/2;
        if(V[mind]==searchItem){
            found=true;
        }else if (V[mind]>searchItem){
            last=mind-1;
        }else{
            first=mind+1;
        }
    }

    if(found)
        printf("found");
    else
        printf("not found");


}
