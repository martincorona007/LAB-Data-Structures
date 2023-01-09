//creates a node class that will represent elements/nodes in the stack
class Node {
  constructor (value) {
    this.value = value;
    this.next = next;
  }
}
//creates a Stack class that will store elements/nodes
class Stack {
  constructor () {
    this.first = null;
    this.last = null;
    this.size = 0;
  }
//when we want to add a node to the stack we call the push method on the stack and pass the value as an argument
push (value) {
    let node = new Node(value);
    if (this.size === 0) {
      this.first = node;
      this.last = node;
    } else if (this.size >= 1) {
      let currFirst = this.first;
      this.first = node;
      this.first.next = currFirst;
    }
    return this.size++;
  }
//when we want to remove the last node off the stack we call the pop method
pop () {
    if (this.size === 0) {
      return null;
    }
    let temp = this.first;
    if (this.size === 1) {
      this.last = null;
    }
    this.first = this.first.next;
    this.size --;
    return this.first;
  }
}