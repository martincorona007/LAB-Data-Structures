class Node{
  constructor(item){
    this.value = item;
    this.next = null;
  }
}
class LinkedList{
  constructor(value){
    this.head = {
      value: value,
      next: null
    }
    this.tail = this.head;//means that when you change this.tail it will affect this.head as they both point to the same object in memory.
    this.length = 1;
  }
  append(item){
    // const newNode = {
    //   value: item,
    //   next: null,
    // };
    const newNode = new Node(item);
    this.tail.next = newNode;
    this.tail = newNode;
    this.length++;
    return this;//return the actual list
  }
  prepend(item){
    // const newNode = {
    //   value: item,
    //   next: null,
    // };
    const newNode = new Node(item);
    newNode.next = this.head;
    this.head = newNode;
    this.length++;
    return this;
  }
  printList(){
    const array = [];
    let currentNode = this.head;
    while(currentNode != null){
      array.push(currentNode.value);
      currentNode = currentNode.next;
    }
    return array;
  }
  insert(index,item){
    if(index >= this.length){//validation if index is bigger
      return this.append(item)
    }
    const newNode = new Node(item);
    const leader = this.traverseToIndex(index-1);
    const holdingPointer = leader.next;
    leader.next = newNode;
    newNode.next = holdingPointer;
    this.length++;
    return this.printList();
    
  }
  remove(index){
    const leader = this.traverseToIndex(index-1);
    const nodeRemove = leader.next;
    leader.next = nodeRemove.next;
    this.length--;
    return this.printList();

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
  reverse(){
    if(!this.head.next){
      return this.head;
    }
    // let first = this.head;//prev
    // this.tail = this.head;//curr ,means that when you change this.tail it will affect this.head as they both point to the same object in memory.
    // let second = first.next//next
    // while(second){
    //   const temp = second.next;
    //   second.next = first;
    //   first = second;
    //   second = temp;
    // }
    // this.head.next = null;
    // this.head = first;
    // return this.printList();
    
    let prev = null;
    let currentNode = this.head;
    let next = null;
    while(currentNode){
      next = currentNode.next;//save next
      currentNode.next = prev;//reverse
      prev = currentNode;//
      currentNode = next;//
    }
    this.head.next = null;
    this.head = prev;
    return prev
  }
   /*       _____________
           |   |    |   |
          |---|info|---|-->
          |___|____|___|
   */
}
const myLinkedList = new LinkedList(10);
console.log(myLinkedList.append(11));
console.log(myLinkedList.append(15));
//myLinkedList.prepend(4);
//console.log(myLinkedList);
//myLinkedList.insert(2,8);
//console.log(myLinkedList.printList())
//myLinkedList.remove(3)
console.log(myLinkedList.printList())
myLinkedList.reverse();
console.log(myLinkedList.printList())