#include "file.hpp"
int main(){
    int _si=0,_op;
        std::cout<<"Select the size of the array: ";
        std::cin>>_si;
         file obj(_si);

            std::cout<<"\n\t\t\tMENU"
                        "\n\t Sorting Algorithms"
                        "\n1. Bubble Sort";
            std::cout<<"\n2. Cocktail Shaker Sort";
            std::cout<<"\n3. Quick Sort";
            std::cout<<"\n4. Merge Sort";
            std::cout<<"\n5. Selection Sort";
            std::cout<<"\n6. Shell Sort";
            std::cout<<"\n7. Insert Sort";
            std::cout<<"\n8. Insert Binary";
            std::cout<<"\n\t Searching Algorithms";
            std::cout<<"\n9. Sequential Search";
            std::cout<<"\n10. Binary Search";

            std::cout<<"\nOption: ";
            std::cin>>_op;
            switch(_op){
            case 1: obj.bubbleSort(),obj.print();break;
            case 2: obj.shakerSort(),obj.print();break;
            case 3: obj.quickSort(),obj.print();break;
            case 4: obj.mergeSort(),obj.print();break;
            case 5: obj.selectionSort(),obj.print();break;
            case 6: obj.shellSort(),obj.print();break;
            case 7: obj.inserSort(),obj.print();break;
            case 8: obj.insertBinary(),obj.print();break;
            case 9: obj.secuentialSearch();break;
            case 10: obj.binarySearch();break;
            default:
                printf("\nERROR 4004");
            }

        obj.~file();

    return 0;
}
