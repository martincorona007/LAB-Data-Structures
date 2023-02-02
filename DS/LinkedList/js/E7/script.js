class ListNode {
  constructor(data) {
    this.data = data;
    this.next = null;
    this.previous = null;
  }
}

class DoublyLinkedList {
  constructor() {
    this.head = null;
    this.tail = null;
    this.size = 0;
  }

  insertAtHead(data) {
    const newNode = new ListNode(data);
    if (!this.head) {
      this.head = newNode
      this.tail = this.head;
    } else {
      newNode.next = this.head;
      this.head.previous = newNode;
      this.head = newNode;  
    }
    this.size++;
  }

  insertatTail(data) {
    const newNode = new ListNode(data);
    if (!this.tail.data) {
      this.head = newNode
      this.tail = this.head;
    } else {
      newNode.previous = this.tail;
      this.tail.next = newNode;
    }
    this.size++;
  }

  removeHead() {
    if (!this.head)
      return
    else {
      this.head = this.head.next;
      this.head.previous = null;
      this.size--;
    }
  }

  removeTail() {
    if (!this.tail)
      return
    else {
      this.tail = this.tail.previous;
      this.tail.next = null;
      this.size--;
    }

    
  }

  find(value) {
    if (this.head.data === value) return this.head;

    let currentNode = this.head;
    while (currentNode) {
      if (currentNode.data === value)
        return currentNode;
      else
        currentNode = currentNode.next;
    }
    return null;
  }

  removeByValue(value) {
    const node = this.find(value);
    
    if (node) {
      if (node === this.head){
        this.removeHead();
        return;
      } else if (node === this.tail) {
        this.removeTail();
        return;
      } else {
        node.previous.next = node.next;
        this.size--;
      }
    }

  }

  insertAfterValue(value, data) {
    const node = this.find(value);
    
    if (node) {
      if (node === this.tail){
        this.insertatTail(data);
        return;
      } else {
        const newNode = new ListNode(data);
        newNode.next = node.next;
        newNode.previous = node;
        node.next.previous = newNode;
        node.next = newNode;
        this.size++;
      }
    } else {
      console.error('node not found')
    }

  }

  print() {
    let node = this.head;
    let str = `${node.data}`;
    while (node.next) {
      str += ` <=> ${node.next.data}`
      node = node.next;
    }
    console.log(str);
  }

  reversePrint() {
    let node = this.tail;
    let str = `${node.data}`;
    while (node.previous) {
      str += ` <=> ${node.previous.data}`
      node = node.previous;
    }
    console.log(str);
  }
}




myList = new DoublyLinkedList();
myList.insertAtHead(5);
myList.insertAtHead(10);
myList.insertAtHead(15);
myList.insertAtHead(12);
myList.insertAtHead(7);
myList.insertAtHead(18);

myList.print();
myList.removeByValue(15);
myList.print();
myList.removeByValue(1);

myList.insertAfterValue(12, 11);
myList.print();


