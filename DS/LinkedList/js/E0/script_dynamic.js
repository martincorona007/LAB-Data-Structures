class Node {
  constructor(val) {
    this.val = val;
    this.next = null;
  }
};

class Stack {
  constructor() {
    this.head = null;
    this.tail = null;
    this.length = 0;
  }
  add(val) {
    const newNode = new Node(val);

    if (!this.head) {
      this.head = newNode;
      this.tail = newNode;
    } else {
      const temp = this.head;
      this.head = newNode;
      this.head.next = temp;
    };

    this.length++;
    return this;
  }
  remove() {
    if (!this.head) return null;

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
      result += current.val += '|-]->';
      current = current.next;
    }
    result+= 'X ';
    return  result;
  }
};

let stack = new Stack()

console.log(stack.add(10))
console.log(stack.add(20))
console.log(stack.add(30))
console.log(stack.add(40))

//console.log(stack.add('one'))
//console.log(stack.add('two'))
//console.log(stack.add('three'))

console.log(stack) // two -> one
//stack.remove()
console.log(stack)
console.log(stack.print()) // two -> one
