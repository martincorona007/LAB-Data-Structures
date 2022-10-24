let A = [4,1,3,2,16,9,10,14,8,7];


function max_heapify(A,i){
  l = left(i);
  r = right(i);
  largest = 0;
  if(i<= heap_size(A) && A[l] > A[i]){
    largest = l;
  }else{
    largest = i;
  }
  if(r <= heap_size(A) && A[r] > A[largest]){
    largest = r;
  }
  if(largest != i){
    exchange?
  }

}
//is the number of elements in the array
function length(array){
  return array.length ;
}
// the number of elements in the heap stored within array A
function heap_size(array){
  return array.length - 1
}
function parent(i){
  return Math.floor((i)/2);
}
function left(i){
  return 2 * i;
}
function right(i){
  return (2 * i) + 1;
}
