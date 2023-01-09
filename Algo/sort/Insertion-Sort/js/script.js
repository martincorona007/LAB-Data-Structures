function insertionSort(A){
  for(let i = 1 ; i < A.length; i++){
    console.log(" - ",A[i])
    let key = A[i];
    let j = i - 1;
    while(j > 0 && A[j]> key){
      A[j + 1] = A[j];
      j = j - 1;
    }
    A[j+ 1] = key
    console.log(A)
  }
  
  return A;
}
let array = [16,14,10,8,7,9,3,2,4,1];

console.log(array);
console.log(insertionSort(array));
//console.log(array);
