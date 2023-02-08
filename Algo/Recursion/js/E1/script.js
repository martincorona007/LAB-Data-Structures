function findFactorialIterative(number) {
  //code here
  let answer = 1;
  for(let i = 1 ; i <= number; i++){
    answer *= i;
    console.log(answer)
  }
  return answer;
}


findFactorialIterative(5)

function findFactorialRecursive(number) {
  //code here
  
  if(number <= 1){
    return number;
  }
  return number * findFactorialRecursive(number-1);
}

console.log(findFactorialRecursive(5))