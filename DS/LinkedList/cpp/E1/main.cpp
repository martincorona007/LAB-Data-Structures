	//Implementation of Stack using Singly Linked List
#include <stdio.h>
#include <stdlib.h>
/*Declaration of structure Node having integer data and another structure
pointer to point the address of the next node*/
struct Node{
	int data;
	struct Node* next;
};
struct Node* top;

//Function declarations to use function in main function and other functions
void push(int);
int pop(void);
int isEmpty(void);
void peek(void);
void traverse(void);

int main(){
	int ch,n,k;
	while(1){
		printf("Enter your choice \n");
		printf("1. Push \n");
		printf("2. Push \n");
		printf("3. Peek \n");
		printf("4. Traverse \n");
		printf("5. Quit \n");
		scanf("%d",&ch);
		switch(ch){
			case 1: 
					printf("Enter the element to push into the stack :");
					scanf("%d",&n);
					push(n);
				break;
			case 2:
					k = pop();
					if(k != 0)
						printf("poped element is %d \n",k);
				break;
			case 3:
					peek();
				break;
			case 4: 
					traverse();
				break;
			case 5: 
				return 0;

		}
	}
}
//Functions definitions
int isEmpty(){ //isEmpty Function
	if( top == NULL)
		return 1;
	else
		return 0;
}
void push(int n){
	//create new node temp and allocate memory
	struct Node* temp = (struct Node*)malloc(sizeof(struct Node));
	//check if stack (heap) is full. Then inserting an element would
	//lead to stack overflow
	if(!temp){
		printf("Stack overflow");
		exit(1);
	}
	//initialize data into temp data field
	temp->data = n;
	//put top pointer reference into temp link
	temp->next = top;
	//make temp as top of stack
	top = temp;
}
int pop(){
	struct Node* temp;
	if(top == NULL){
		printf("Stack underflow\n");
		return 0;
	}else{
		//top assign into temp
		temp = top;
		//assign second node to top
		top = top->next;
		//destroy connection between first and second
		temp->next = NULL;
		//returing the top element
		return temp->data;
		//release memory of top node
		free(temp);
	}
}
void peek(){
	//check for empty stack
	if(!isEmpty())
		printf("peek value in stack is %d\n",top->data);
	else
		printf("Stack is empty\n");
}
void traverse(){
	struct Node* temp;
	//check for stack overflow
	if(top == NULL){
		printf("Stack Underflow\n");
		exit(1);
	}else{
		temp = top;
		printf("The traversed stack elements are : ");
		while(temp != NULL){
			//print node data
			printf("%d ",temp->data);
			//assign temp link to temp
			temp = temp->next;
		}
		printf("\n");
	}
}