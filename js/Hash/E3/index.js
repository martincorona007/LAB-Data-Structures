class HashTable{
  constructor(size){
    this.table = new Array(size);
    this.size = size
  }
  //check if table is empty
  isEmpty(){
    return this.size === 0;
  }
  //gets the size of the table
  getSize(){
    return this.size;
  }
  //hash function that converts string to numeric index
  hash(key){
    let total = 0;
    for(let i = 0; i < key.length; i++){
      total +=key.charCodeAt(i);
    }
    return total % this.size;
  }
  //adds a key-value pair to the table
  set(key,value){
    const index = this.hash(key);
    const bucket = this.table[index];
    if(!bucket){
      this.table[index] = [[key,value]];
    }else{
      const sameKeyItem = bucket.find((item)=> item[0] ===key);
      if(sameKeyItem){
        sameKeyItem[1] = value;
      }else{
        bucket.push([key,value]);
      }
    }
  }
}