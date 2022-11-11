class HashTable{
  constructor(size){
    this.data = new Array(size);
  }
  _hash(key){'_ underscore to note that the method is private'
    let hash = 0;
    for(let i = 0; i < key.length;i++){
      hash = (hash + key.charCodeAt(i)* i) % this.data.length;
    }
    return hash;
  }
  set(key,value){
    this.data[this._hash(key)] = [key,value]
  }
  get(key){
    return this.data[this._hash(key)]
  }
  printHashTable(){
    return this.data;
  }
  //Without collision
  keys() {
    if (!this.data.length) {
      return undefined
    }
    let result = []
    // loop through all the elements
    for (let i = 0; i < this.data.length; i++) {
        // if it's not an empty memory cell
        if (this.data[i] && this.data[i].length) {
          // but also loop through all the potential collisions
          if (this.data.length > 1) {
            for (let j = 0; j < this.data[i].length; j++) {
              result.push(this.data[i][j][0])
            }
          } else {
            result.push(this.data[i][0])
          } 
        }
    }
    return result; 
  }
}
const myHashTable = new HashTable(50);
myHashTable.set("Bitcoin",350000);
myHashTable.set("Etherium",150000);
myHashTable.set("Solana","19");
console.log(myHashTable.printHashTable())
console.log(myHashTable.get("Solana"))