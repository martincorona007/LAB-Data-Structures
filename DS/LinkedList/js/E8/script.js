class Node{
  constructor(data,next){
    this.data = data;
    this.next = next;
  };
};
class LinkedList{
  constructor(){
    this.head = null;
    this.size = 0;
  };
  add(data){
    const newNode = new Node(data,null);
    if(!this.head){
      this.head = newNode;
    }else{
      let current = this.head;
      while(current.next){
        current = current.next;
      }
      current.next = newNode;
    }
    this.size++;
  };
  insertAt(data,index){
    if(index < 0 || index > this.size){
      return null;
    };
    const newNode = new Node(data);
    let current = this.head;
    let previos;
    if(index === 0 ){
      newNode.next = current;
      this.head = newNode;
    }else{
      for(let i = 0; i < index; i++){
        previos = current;
        current = current.next;
      };
      newNode.next = current;
      previos.next = newNode;
    };
    this.size++;
  }
  print(){
    if(!this.size){
      return null;
    }
    let current = this.head;
    let result = '[';
    while(current){
      result += current.data+= '|-]-> ';
      current = current.next;
    }
    result+= 'X';
    return result;
  }
  removeData(data){
    let current  = this.head;
    let previos = null;
    while(current!= null){
      if(current.data === data){
        if(!previos){
          this.head = current.next;
        }else{
          previos.next = current.next;
        };
        this.size--;
        return current.data;
      };
      previos = current;
      current = current.next;
    };
    return null;
  }
  removeFrom(index){
    if(index < 0 || index > this.size){
      return null;
    };
    let current = this.head;
    let previos = null;
    if(index === 0){
      this.head = current.next;
    }else{
      for(let i = 0 ; i < index; i ++){
        previos = current;
        current = current.next;
      };
      previos.next = current.next;
    };
    this.size--;
    return current.data;
  }
  isEmpty(){
    return this.size === 0;
    // if(this.size === 0){
    //   return true;
    // }else{
    //   return false;
    // };
  };
  getSize(){
    return this.size;
  }
};
const linkedList = new LinkedList();
console.log(linkedList);
linkedList.add(12);
linkedList.add(99);
linkedList.add(37);
linkedList.insertAt(10,1);
//console.log(linkedList.getSize())
//console.log(linkedList.isEmpty());
//linkedList.removeFrom(3)
//linkedList.removeData(99)
console.log(linkedList.print())
console.log(linkedList)
