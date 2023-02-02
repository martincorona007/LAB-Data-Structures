class Node {
  constructor(value){
    this.value = value;
    this.next = null;
  }
}

class Stack {
  constructor(){
    this.top = null;
    this.bottom = null;
    this.length = 0;
  }
  peek() {//read the last item
    //console.log(" B ",this.bottom)
    return this.top;
  }
  push(value){
    const newNode = new Node(value);
    if(this.length === 0){
      this.top = newNode;
      this.bottom = newNode;
    }else{
      const holdingPointer = this.top;
      this.top = newNode;
      this.top.next = holdingPointer;
    }
    this.length++;
    return this;
  }
  pop(){
    if(!this.top){//stack is emptu
      return null
    }
    if(this.top === this.bottom){//there is only one item
      this.bottom = null;
    }
    //const holdingPointer = this.top;//save before removed
    this.top = this.top.next;
    this.length--;
    return this;
  }
  //isEmpty
}

const myStack = new Stack();
myStack.peek();
myStack.push('google');//1
myStack.push('udemy');//2
myStack.push('discord');//3
console.log(myStack.peek());
//console.log(myStack.pop());
// myStack.pop();
// myStack.pop();
// myStack.pop();

//google -> null
// udemy-> google -> null
// discord-> udemy-> google -> null
// top               bottom    

//discord
//udemy
//google