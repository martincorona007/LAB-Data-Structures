//array in js are just objects
//keys acts are index
class MyArray{
  constructor(){
    this.length = 0;
    this.data = {}
  }
  get(index){
    return this.data[index];
  }
  push(item){
    this.data[this.length] = item;
    this.length++;//lenght will keep incrementing 0 1 2 3 4 5
    return this.length;
  }
  pop(){
    const lastItem = this.data[this.length -1];//we count from 0
    delete this.data[this.length-1];
    this.length--;
    return lastItem;
  }
  //this is not part of an stack, consider it like a teqnique in arrays
  // delete(index){
  //   const item = this.data[index];
  //   this.shiftItems[index];
  //   return lastItem;
  // }
  // shiftItems(index){
  //   for(let i = 0; i < this.length; i ++){
  //     this.data[i] = this.data[i+1];
      
  //   }
  //   delete this.data[this.length-1];
  //   this.length--;
  // }
}
const newArray = new MyArray();
console.log(newArray.push(0))
console.log(newArray.push("sss"))
console.log(newArray.pop())
console.log(newArray)