
function heapSort(A){
  BuildMaxHeap(A);  
  for(let i = A.length -1; i > 0; i--){
    swap(A,1,i);
    heapify(A,i);
  }
  return A;
}
function BuildMaxHeap(A){
  let n = A.length;
  for(let i = Math.floor(n/2) - 1 ; i >=0 ;i--){
    heapify(A,i);
  }
  return A;
}
function heapify(A,i){
  let largest = i;
  l = left(i);//left child index
  r = right(i);//right child index
  
  if(l<= A.length && A[l] > A[i]){
    largest = l;
   }
   //else{
  //   largest = i;
  // }
  if(r <= A.length && A[r] > A[largest]){
    largest = r;
  }
  if(largest != i){
    swap(A,i,largest);
    heapify(A,largest);
  }

}
function printArray(array){
  for(let i = 0 ; i < array.length ; i++){
    console.log(array[i]);
  }
}
function swap(array,indexA,indexB){
  var aux = array[indexA];
  array[indexA] = array[indexB];
  array[indexB] = aux;
}
function length(array){
  return array.length ;
}
function parent(i){
  return Math.floor((i)/2);
}
function left(i){
  return (2 * i) + 1;
}
function right(i){
  return (2 * i) + 2;
}
let A = [4,1,3,2,16,9,10,14,8,7];
//let A = [8,4,7,1,3,5]
process.stdout.write(" "+A);
console.log("")
process.stdout.write(" "+BuildMaxHeap(A));
console.log("")
process.stdout.write(" "+heapSort(A))


