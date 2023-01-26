class INode<T> {
  value: T;
  next: null | INode<T>;
  constructor(value: T) {
    this.value = value;
    this.next = null;
  }
}
 
class LinkedLists<T> {
  head: INode<T>;
  tail: INode<T>;
  length: number = 0;
  
  
  constructor(value: T) {
    const node = new INode<T>(value)
    this.head = node;
    this.length = 1;
    this.tail = node
  }
  
  append(value: T) {
    const newNode = new INode<T>(value);
    this.tail.next = newNode;
    this.tail = newNode;
    this.length++;
  }
  
  prepend(value: T) {
    const newNode = new INode<T>(value)
    newNode.next = this.head;
    this.head = newNode;
    this.length++;
  }
}