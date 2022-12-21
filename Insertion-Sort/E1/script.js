function insertionSort(A){
  for(let j = 1 ; j < A.length; j++){
    let key = A[j];
    let i = j - 1;
    while(i >= 0 && A[i]> key){
      A[i + 1] = A[i];
      i = i - 1;
    }
    A[i+ 1] = key
  }
  return A;
}
let array = [16,14,10,8,7,9,3,2,4,1];

console.log(array);
console.log(insertionSort(array));
//console.log(array);
