class Node{
  constructor(value){
    this.value = value;
    this.next = null;
  }
}
class Queue{
  constructor(){
    this.first = null;
    this.last = null;
    this.length = 0
  }
  peek(){
    return this.first;
  }
  enqueue(value){
    const newNode = new Node(value);
    if(this.length === 0 ){
      this.first = newNode;
      this.last = newNode;
    }else{
      this.last.next = newNode;
      this.last = newNode;
    }
    this.length++;
    return this
  }
  dequeue(){
    if(!this.first){
      return null;
    }
    if(this.first === this.last){
      this.last = null;
    }
    //const holdingPointer = this.first;
    this.first = this.first.next;
    this.length--;
    return this;
    //return holdingPointer;
  }
  print(){
    if(!this.length){
      return null;
    }
    let current = this.first;
    let result = '[';
    while(current){
      result += current.value += '|-]->';
      current = current.next;
    }
    result+= 'X ';
    return  result;
  }
  
}
const myQueue = new Queue();
myQueue.enqueue(1);
myQueue.enqueue(2);
myQueue.enqueue(3);
myQueue.dequeue();
myQueue.print();
