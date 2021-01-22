#ifndef FILE_HPP
#define FILE_HPP
#include <iostream>
#include <stdio.h>
#include <stdlib.h>
#include <ctime>
#include <cstdlib>
class file{

    private:
        int _s;
        int *V;
    public:
        file(int),
        file();
        ~file();

        void generator();
        void print();
        void bubbleSort();
        void shakerSort();
        void mergeSort();
        void mergeSortt(int[],int,int);
        void mergee(int[],int,int,int);
        void quickSort();
        void quickSortt(int[],int,int);
        void selectionSort();
        void shellSort();
        void inserSort();
        void insertBinary();
        void secuentialSearch();
        void binarySearch();

        void swapp(int*,int*);

};
#endif //FILE_HPP



