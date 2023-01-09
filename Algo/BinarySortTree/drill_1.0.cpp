#include <iostream>
#include <stdio.h>
#include <ctime>
#include <stdlib.h>
using namespace std;

typedef int KindData;
struct nodeType{
    KindData info;
    nodeType* linker;
    nodeType* linkft;
};
nodeType* root;
class tree{



public:
    //tree();
    //~tree();
    void insert_ABB(nodeType* ptr,int);
    void inorder(nodeType* ptr);
    void preorder(nodeType* ptr);
    void postorder(nodeType* prt);
};

void tree::insert_ABB(nodeType* ptr,int infor){
    nodeType* newNode=new nodeType;
    newNode->info=infor;
    if(root==NULL){
        newNode->linkft=NULL;
        newNode->linker=NULL;
        root=newNode;
    }else{

        if(infor<ptr->info){
            if(ptr->linkft==NULL){
                newNode->info=infor;
                newNode->linkft=NULL;
                newNode->linker=NULL;
                ptr->linkft=newNode;

            }else{
                insert_ABB(ptr->linkft,infor);
            }
        }else if(infor>ptr->info){
            if(ptr->linker==NULL){
                newNode->info=infor;
                newNode->linkft=NULL;
                newNode->linker=NULL;
                ptr->linker=newNode;
            }else{
                insert_ABB(ptr->linker,infor);
            }
        }else{
            printf("Node impossible to add, Not duplicates %i \n",infor);
        }
    }
    //printf("root %i",newNode->info);

}
void tree::inorder(nodeType* ptr){
    if(ptr!=NULL){
        inorder(ptr->linkft);
        printf(" %i ",ptr->info);
        inorder(ptr->linker);
    }
}
void tree::postorder(nodeType* ptr){
    if(ptr!=NULL){
        postorder(ptr->linkft);
        postorder(ptr->linker);
        printf(" %i ",ptr->info);
    }
}
void tree::preorder(nodeType* ptr){
    if(ptr!=NULL){
        //visit means/ print  visit the ptr
        printf(" %i ",ptr->info);
        preorder(ptr->linkft);
        preorder(ptr->linker);
    }
}

int main(){
    int n;
    tree listt;
    srand((unsigned)time(NULL));

    printf("how many data? ");
    cin>>n;

    for(int i=0;i<n;i++){
        int data=rand()%100+1;
    listt.insert_ABB(root,data);
    }
    printf("\nIn-Order ");
    listt.inorder(root);
    printf("\nPre-Order ");
    listt.preorder(root);
    printf("\nPost-Order ");
    listt.postorder(root);

    return 0;
}
