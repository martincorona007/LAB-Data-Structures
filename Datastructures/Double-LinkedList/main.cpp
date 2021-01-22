#include "node.h"
int main(){
    dLinkedList listt;
    int NN,N,op;
    bool res;//I use this variable to know if the algorithm delete the node
    srand((unsigned)time(NULL));

    do {
        cout << "-->Double Linked List<-";
        cout << "\n1. Insert at the beginning\n2. Insert at the end\n3. Insert before of X\n4. Insert after of X\n5. Delete first\n6. Delete last\n7. Delete X\n8. Delete before X\n9. Delete after X\n10. Display List\nOption:";
        cin >> op;
        switch (op) {
            case 1:
                printf("\n-->Insert at the beginning<--\n");
                printf("Number to insert: ");
                    cin >> N;
                    listt.insertFirst(N);
                printf("\n\n");
                    listt.display();
                printf("\n");
                break;
            case 2:
                printf("\n-->Insert at the end<--\n");
                printf("Number to insert: ");
                    cin >> N;
                    listt.insertLast(N);
                printf("\n\n");
                    listt.display();
                printf("\n");
                break;
            case 3:
                printf("\n-->Insert before of X<--\n");
                    listt.display();
                printf("\nSelect number in the list: ");
                    cin >> N;
                printf("\nNumber to insert: ");
                    cin >> NN;
                    listt.insertBeforeOfX(N, NN);
                printf("\n\n");
                    listt.display();
                printf("\n");
                break;
            case 4:
                printf("\n-->Insert after of X<--\n");
                listt.display();
                printf("\nSelect number in the list: ");
                    cin >> N;
                printf("\nNumber to insert: ");
                    cin >> NN;
                    listt.insertAfterOfX(N, NN);
                printf("\n\n");
                    listt.display();
                printf("\n");
                break;
           case 5:
               printf("\n-->Delete first<--\n");
                 listt.display();
                printf("\n");
                    res=listt.deleteFirst();
                      if(res==1){
                        printf("--[Node delete]--");
                        printf("\n");
                          listt.display();
                        printf("\n");

                      }else{
                        printf("node not delete");
                      }
           break;
            case 6:
                printf("\n-->Delete Last<--\n");
                listt.display();
                printf("\n");
                res=listt.deleteLast();
                if(res==1){
                    printf("--[Node delete]--");
                    printf("\n");
                    listt.display();
                    printf("\n");

                }else{
                    printf("node not delete");
                }
                break;
           case 7:
               printf("\n-->Delete X<--\n");
                 listt.display();
                printf("\nNode to delete: ");
                    cin>>N;
                 res=listt.deleteX(N);
                    if(res==1){
                        printf("--[Node delete]--");
                        printf("\n");
                           listt.display();
                        printf("\n");

                    }else{
                        printf("node not delete");
                    }
           break;
            case 8:
                printf("\n-->Delete Before X<--\n");
                listt.display();
                printf("\nNode to delete: ");
                cin>>N;
                res=listt.deleteBeforeX(N);
                if(res==1){
                    printf("--[Node delete]--");
                    printf("\n");
                    listt.display();
                    printf("\n");
                }else{
                    printf("node not delete");
                }
                break;
            case 9:
                printf("\n-->Delete After X<--\n");
                listt.display();

                printf("\nNode to delete: ");
                cin>>N;
                res=listt.deleteAfterX(N);

                if(res==1){
                    printf("--[Node delete]--");
                    printf("\n");
                    listt.display();
                    printf("\n");

                }else{
                    printf("node not delete");
                }
                break;
            case 10:
                printf("\n-->The list<--\n");
                listt.display();
                printf("\n");
                break;
            default:
                printf("ERROR 404 option incorrect");
        }
    }while(op!=11);

    return 0;
}