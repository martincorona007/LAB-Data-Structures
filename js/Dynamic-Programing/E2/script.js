//0, 1, 1, 2, 3, 5, 8, 13, 21, 34, 55, 89, 144, 233...
//0  1  2  3  4  5  6  7    8   9  10  11   12  13
let calculations = 0;
function fibonacci(n){ //time //O(2^n)
  if(n < 2){
    return n;
  }
  return fibonacci(n-1) + fibonacci(n-2);
}
//console.log(fibonacci(7)) //why 7? bcs of the index and level

function fibonacciMaster(){//Top down memoization approach
   let cache = {}
   return function fib(n){
    calculations++;
    if(n in cache){
      return cache[n];
    }else{
      if(n < 2){
        return n;
      }else{
        cache[n] = fib(n-1) + fib(n-2);
        return cache[n];
      }
    }
   }
}
function fibonacciMaster2(n){//Bottom-Up approach 
  //This type of approach avoids recursion
  //Is bottom up bcs we work from the simplest solution[0,1] and slowly work your way up higher and higher towards more complex problems
  let answer = [0,1];
  for(let i = 2;i <= n; i++){
    answer.push(answer[i-2]+answer[i-1]);
  }
  return answer.pop();
}
const fasterFib = fibonacciMaster();
console.log('Slow', fibonacci(35));
console.log('DP',fasterFib(100));
console.log('DP2 ',fibonacciMaster2(100));
console.log('we did ' + calculations + ' calculations');