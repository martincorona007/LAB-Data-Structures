class HashTable{
  constructor(size){
    this.data = new Array(size);
  }
  //Hash function
  _hash(key){//_ underscore to note that the method is private 
    let hash = 0;
    for(let i = 0; i < key.length;i++){
      hash = (hash + key.charCodeAt(i)* i) % this.data.length;//division method
      console.log("=>", hash)
    }
    console.log("=>l ", hash)
    return hash;
  }

  set(key,value){
    let address = this._hash(key);
    if(!this.data[address]){//check if there is an exiting key/address on the hash table
      this.data[address] = [];//add the key
    }
    this.data[address].push([key,value]);
    return this.data;
  }//O(1)
  
  get(key){
    const address = this._hash(key);
    const currentBucket = this.data[address];//currentBucket = [ [ ] ,[ ], [ ]] 'the solts'
    if(currentBucket){
      for(let i = 0; i < currentBucket.length; i++){   //   0       1
        if(currentBucket[i][0] === key){ // [i][0] ===  [['Smith',2983]] , match the first index of the array
          return currentBucket[i][1];//return the second index 
        } 
      }
    }
    return undefined;
  }//O(n)

  keys(){
    const keysArray = [];
    //console.log(this.data.length);
    for (let i = 0; i < this.data.length; i++){
      if(this.data[i]){
        //console.log(this.data[i][0][1])
        keysArray.push(this.data[i][0][0])
      }
    }
    return keysArray;
  }
  printHashTable(){
    return this.data;
  }
}
const myHashTable = new HashTable(50);
myHashTable.set("Bitcoin",350000);
myHashTable.set("Etherium",150000);
myHashTable.set("Etherium",150000);
myHashTable.set("Solana","19");
myHashTable.set("Solanas","19");
console.log(myHashTable.printHashTable())
console.log(myHashTable.get("Solana"))
console.log(myHashTable.keys())