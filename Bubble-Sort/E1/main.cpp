#include <iostream>
#include "list.hpp"
long contador;
void swap(int &, int&);

int count=0;
void burbuja(list &a){
	
	contador++; int j=0;
	while(j<a.longitud()){
		int i=0;
		while(i<=(a.longitud()-2)-j){
			if (a[i]>a[i+1]){
				swap(a[i],a[i+1]);
			}
			i++;
		contador++;
		}
		j++;
	
	}

}

void qsort(list &lista, int l, int r){
	int i=l;
	int j=r; 
	int pivot=lista[(l+r)/2];
	do{	
contador++;	while (lista[i]< pivot)	i++;
	
contador++;	while (pivot<lista[j])	j--;	
	if(i<=j){
		
		swap(lista[i],lista[j]);
		i++;
		j--;contador++;	
	}

}while (i<j);

		if (l<j)	qsort(lista, l, j);
		if (i<r)	qsort(lista, i, r);

	}



void initrand(){
	srand((unsigned)time(NULL));
}

int main(int argc, char** argv) {
	initrand();
	int n, ran, opcion;
	
	printf("Ingrese el tamanio y el rango \n");
	scanf("%i,%i",&n, &ran);
	list lista(n, n*10);
	
	printf("METODO DE ORDENAMIENTO: \n");
	printf("SELECCIONE UNA OPCION: \n");
	printf("1- Bubble Sort \n");
	printf("2- QUICK SORT \n");
	
	scanf("%i", &opcion);
	
	switch(opcion){
		case 1:
		lista.imprimir();
		printf("ORDENAMIENTO: \n");
		burbuja(lista);
		lista.imprimir();
		contador=0;
		for(int i=0; i<ran; i++){
			lista.gen();
			burbuja(lista);
			
		}printf("ESFUERZO PROMEDIO: %li",contador/ran);
		break;
		
		case 2:
		lista.imprimir();
		printf("\nOrdenamiento \n");
		qsort(lista, 0, lista.longitud()-1);
		lista.imprimir();
		contador=0;
		for(int i=0; i<ran; i++){
			lista.gen();
			qsort(lista,0,lista.longitud()-1);
		}printf("ESFUERZO PROMEDIO: %li",contador/ran);
		
		break;
		
		default:
		printf("NO HAN SELECCIONADO NINGUNO \n");
	}
	
	return 0;
}

void swap(int &i, int &j){	
		int aux=i;
		i=j;
		j=aux;
	
}
