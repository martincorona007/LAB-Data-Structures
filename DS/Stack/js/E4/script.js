class Stack {
  constructor(){
    this.arrayItems = [];
  }
  peek() {//read the last item
    //console.log(" B ",this.bottom)
    return this.arrayItems[this.arrayItems.length-1];
  }
  push(value){
    this.arrayItems.push(value)
    return this;
  }
  pop(){
    this.arrayItems.pop()
    return this;
  }
  //isEmpty
}

const myStack = new Stack();
//myStack.peek();
console.log(myStack.push('google'));//1
console.log(myStack.push('udemy'));//2
console.log(myStack.push('discord'));//3
console.log(myStack.peek());
//console.log(myStack.pop());
// myStack.pop();
// myStack.pop();
// myStack.pop();
//stack Linked list
//google -> null
// udemy-> google -> null
// discord-> udemy-> google -> null
// top               bottom    
//Arrays stack
//google
//google udemy
//google udemy discord

//discord
//udemy
//google