class Node{
  constructor(data,next,prev){
    this.data = data;
    this.next = next;
    this.prev = prev;
  };
};
class DoublyLinkedList{
  constructor(){
    this.head = null;
    this.tail = null;
    this.size = 0;
  };
  removeFromTail(){
    if(!this.tail){
      return null;
    };
    const valueToReturn = this.tail.data;
    if(this.head === this.tail){
      this.head = null;
      this.tail = null;
    }else{
      this.tail = this.tail.prev;
      this.tail.next = null;
    }
    this.size--;
    return valueToReturn;
  };
  removeData(data){
    let current = this.head;
    let previous = null;
    while(current !== null){
      if(current.data === data){
        if(!previous){
          return this.removeFromHead();
        }else if(!current.next){
          return this.removeFromTail();
        }else{
          previous.next = current.next;
          current.next.prev = previous;
        };
        this.size--;
        return current.data;
      };
      previous = current;
      current = current.next;
    };
    return null;
  }
  removeFromHead(){
    if(!this.head){
      return null;
    };
    const valueToReturn = this.head.data;
    if(this.head === this.tail){
      this.head = null;
      this.tail = null;
    }else{
      this.head = this.head.next;
      this.head.prev = null;
    }
    this.size--;
    return valueToReturn;
  }
  insertAt(data,index){
    if(index < 0 || index > this.size){
      return null;
    }
    const newNode = new Node(data,null,null);
    let current = this.head;
    let previos;
    if(index === 0 ){
      newNode.next = current;
      current.prev = newNode;
      this.head = newNode;
    }else{
      for(let i = 0; i < index; i++){
        previos = current;
        current = current.next
      }
      newNode.next = current;
      newNode.prev = previos;
      current.prev = newNode;
      previos.next = newNode;
    }
    this.size++;
  }
  addToTail(data){//atEnd
    const newNode = new Node(data,null,this.tail);
    if(this.tail){//if there is a node
      newNode.prev = this.tail;
      this.tail.next = newNode;
      this.tail = newNode;
    }else{
      this.tail = newNode;
      this.head = newNode;
    }
    this.size++;
  }
  addToHead(data){//atFirst
    const newNode = new Node(data,this.head,null);
    if(this.head){
      newNode.next = this.head;
      this.head.prev = newNode;
      this.head = newNode
    }else{
      this.head = newNode;
      this.tail = newNode;
    }
    this.size++;
  }
  print(){
    let current = this.head;
    let result = '';
    while(current){
      result += current.data + ' <-> ';
      current = current.next;
    };
    return result += ' X ';
  };
  reversePrint(){
    let current = this.tail;
    let result = '';
    while(current){
      result += current.data + ' <-> ';
      current = current.prev;
    };
    return result += ' X ';
  };
  getSize(){
    return this.size;
  }
  isEmpty(){
    return this.size === 0;
  }
}
const doublyLinkedList = new DoublyLinkedList();
doublyLinkedList.addToHead(3);
doublyLinkedList.addToHead(2);
doublyLinkedList.addToHead(7);
doublyLinkedList.addToTail(8);
doublyLinkedList.insertAt(4,3);

console.log(doublyLinkedList.removeFromHead());
console.log(doublyLinkedList.removeFromTail());
console.log(doublyLinkedList.removeData(4));
console.log(doublyLinkedList.print());
console.log(doublyLinkedList.reversePrint());
console.log(doublyLinkedList);
console.log(doublyLinkedList.getSize());
console.log(doublyLinkedList.isEmpty());