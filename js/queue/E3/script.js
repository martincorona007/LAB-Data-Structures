class Queue{
  constructor(){
    this.items = [];
  }
  //adds a new element to the queue
  enqueue(element){
    this.items.push(element);
  }
  //removes an element from the start of queue
  dequeue(){
    if(this.items.length === 0){
      return "None, Queue is empty!"
    }
    return this.items.shift();
  }
  //access the first element in queue
  peek(){
    if(this.items.length === 0 ){
      return "Queue is empty";
    }
    return this.items[0];
  }
  //size of the queue
  size(){
    return this.items.length;
  }
  // checks if queue is empty ()
  isEmpty(){
    return this.items.length === 0;
  }
  //clear the queue
  clear(){
    this.items = [];
  }
  //outputs all the elements in queue
  print(){
    return this.items;
  }
}

const queue = new Queue();
console.log(queue.isEmpty())
queue.enqueue(5);
queue.enqueue(1);
queue.enqueue(3);
console.log(queue.print());
console.log(queue.dequeue());
console.log(queue.print());
console.log(queue.peek());
console.log(queue.peek());
console.log(queue.size());
queue.clear();
console.log(queue.dequeue());
