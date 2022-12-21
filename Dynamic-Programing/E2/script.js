//0, 1, 1, 2, 3, 5, 8, 13, 21, 34, 55, 89, 144, 233...
//0  1  2  3  4  5  6  7    8   9  10  11   12  13
let calculations = 0;
function fibonacci(n){ //time //O(2^n)
  if(n < 2){
    console.log("IN ",n)
    return n;
  }
  let a = n -1;
  let b = n -2;
  let aux1 = fibonacci(a)
  let aux2 = fibonacci(b)
  let sumi  = aux1 + aux2; 
  console.log("N ",n," a ",a," b ",b," a+b ",a+b," [",sumi,"]  ",aux1," - ",aux2)
  return sumi;
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
        //console.log("IN ",n,' ',cache[n])
        return n;
      }else{
        let a = n -1;
        let b = n -2;
        console.log(a," ",b)
        let aux1 = fib(a);
        let aux2 = fib(b);
        cache[n] = aux1 + aux2;
        console.log("N> ",n," a ",a," b ",b," + ",a+b, "[ ",aux1," ",aux2," ] = ",cache[n])
        //console.log("TD ",cache, " - ",cache[n])
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
    console.log("BU ",answer)
  }
  return answer.pop();
}
//=============
// class FibCalc{
//   fn(){
//     this.memo = {};
//     this.fn = this.fib;
//   }
//   optimized(){
//     this.fn = this.fib2;
//     return this
//   }
//   fib(n){
//     if(n <=2 ) return 1;
//     return this.fn(n - 2) + this.fin(n - 1)
//   }
//   fib2(n){
//     if(this.memo[n] !== undefined) return this.memo[n];
//     this.memo[n] = this.fib(n);
//     return this.memo[n]
//   }
// }

// let f = new FibCalc();
// //console.log(f.optimized().fib2(8));
//=============

const fasterFib = fibonacciMaster();
console.log('Slow', fibonacci(7));
console.log('DP',fasterFib(7));
//console.log('DP2 ',fibonacciMaster2(4));
//console.log('we did ' + calculations + ' calculations');