class ListNode {
  constructor(data) {
    this.data = data;
    this.next = null;
  }
}

class SinglyLinkedList {
  constructor() {
    this.head = null;
    this.size = 0;
  }

  insertAtHead(data) {
    const newNode = new ListNode(data);
    if (!this.head) {
      this.head = newNode
    } else {
      newNode.next = this.head;
      this.head = newNode;  
    }
    this.size++;
    return this;
  }

  removeHead() {
    if (this.head === null)
      return
    else {
      this.head = this.head.next;
      this.size--;
    }
    return this;
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

  deleteByValue(value) {
    if (this.head.data === value)
      return this.removeHead();
    
    let currentNode = this.head.next;
    let previousNode = this.head;

    while(currentNode) {
      if (currentNode.data === value) break;
      
      previousNode = currentNode;
      currentNode = currentNode.next;
    }

    if (currentNode) {
      previousNode.next = currentNode.next;
      this.size--;
    }
  }

  insertAfterValue(value, data) {
    const previousNode = this.find(value);
    
    if (previousNode) {
      const newNode = new ListNode(data);
      newNode.next = previousNode.next;
      previousNode.next = newNode;
      this.size++;
    }
  }


  print() {
    let node = this.head;
    let str = `${node.data}`;
    while (node.next) {
      str += ` => ${node.next.data}`
      node = node.next;
    }
    console.log(str);
  }
}


myList = new SinglyLinkedList();
console.log(myList.insertAtHead(5));
console.log(myList.insertAtHead(10));
console.log(myList.insertAtHead(15));
console.log(myList.insertAtHead(7));
//console.log(myList.insertAfterValue(15, 12));






myList.print();



