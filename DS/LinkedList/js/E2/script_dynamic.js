class Node{
  constructor(value){
    this.value = value;
    this.next = null;
  }
}
class Queue {
  constructor() {
    this.head = null;
    this.tail = null;
    this.length = 0;
  }
  enqueue(val) {
    const newNode = new Node(val);

    if (!this.head) {
      this.head = newNode;
      this.tail = newNode;
    } else {
      this.tail.next = newNode;
      this.tail = newNode;
    };

    this.length++;
    return this;
  }
  dequeue() {
    if (!this.head) return null;
    if (this.head === this.tail) this.last = null;
    let temp = this.head;
    this.head = this.head.next;

    this.length--;
    return temp.val;
  }
  print(){
    if(!this.length){
      return null;
    }
    let current = this.head;
    let result = '[';
    while(current){
      result += current.value += '|-]->';
      current = current.next;
    }
    result+= 'X ';
    return  result;
  }
}

let queue = new Queue();
console.log("1 ",queue.enqueue(10));
console.log("2 ",queue.enqueue(20))
console.log("3 ",queue.enqueue(30))
console.log("4 ",queue.enqueue(40))
console.log(queue.print())
//queue.dequeue();// [10|-]->
//console.log(queue); // two -> three
//console.log(queue.print())