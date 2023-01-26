class Node{
  constructor(item){
    this.value = item;
    this.next = null;
    this.prev = null;
  }
}
class DoublyLinkedList{
  constructor(value){
    this.head = {
      value: value,
      next: null,
      prev: null,
    }
    this.tail = this.head;//means that when you change this.tail it will affect this.head as they both point to the same object in memory.
    this.length = 1;
  }
  append(item){
    
    const newNode = new Node(item);
    newNode.prev =this.tail;
    this.tail.next = newNode;
    this.tail = newNode;
    this.length++;
    console.log( newNode.prev,"< - ",newNode.value ," ->",newNode.next);
    //return this;//return the actual list
  }
  prepend(item){
    const newNode = new Node(item);
    newNode.next = this.head;
    this.head.prev = newNode;
    this.head = newNode;
    this.length++;
    console.log( newNode.prev,"< - ",newNode.value ," ->",newNode.next);
   // return this;
  }
  insert(index,item){
    if(index >= this.length){//validation if index is bigger
      return this.append(item)
    }
    const newNode = new Node(item);
    const leader = this.traverseToIndex(index-1);
    const follower = leader.next;
    leader.next = newNode;
    newNode.prev = leader;
    newNode.next = follower;
    follower.prev = newNode;
    console.log( newNode.prev,"< - ",newNode.value ," ->",newNode.next);
    this.length++;
   // console.log(this)
   // return this.printList();
    
  }
  remove(index){
    const leader = this.traverseToIndex(index-1);
    const nodeRemove = leader.next;
    leader.next = nodeRemove.next;
    this.length--;
  //  return this.printList();

  }
  traverseToIndex(index){
   let counter = 0;
   let currentNode = this.head;
   while(counter !== index){
    currentNode = currentNode.next;
    counter++;
   }   
   return currentNode;
  }
  printList(){
    const array = [];
    let currentNode = this.head;
    while(currentNode != null){
     array.push(currentNode.value);
      currentNode = currentNode.next;
      //console.log(this)
    }
    return array;
  }
}
const myLinkedList = new DoublyLinkedList(10);
myLinkedList.append(5);
myLinkedList.append(16);
myLinkedList.prepend(1);
console.log(myLinkedList.insert(1,8));

console.log(myLinkedList.printList())
//console.log(myLinkedList);
 // myLinkedList.remove(3)
// console.log(myLinkedList.printList())