let t = [[2,3,1,3,4],[2,1,2,2,1]];
let e = [2,4];
let x = [3,2];
let a = [[7,9,3,4,8,4],[8,5,6,4,5,7]];
const m = 4;
const n = 5;
let f = [...new Array(2)].map(elem => new Array(6));
let l = [...new Array(2)].map(elem => new Array(5));
//f[0,1]=5;


for(let i = 0 ; i < a.length ; i++){
  for(let j = 0; j < a[i].length;j++){

    f[i][j] = a[i][j]
    
  }

}
function fastest_way(a,t,e,x,n){
  f[0][0] = e[0] + a[0][0]//f1
  f[1][0] = e[1] + a[1][0]//f2
  
  for(let j = 2; j < n ; j++){
    if(f[0][j-1]+a[0][j] <= f[1][j-1] + t[1][j-1] + a[0][j]){
      console.log("- ",j)
      console.log("- ",f[0][j-1]);
      console.log("- ",a[0][j]);
      f[0][j] = f[0][j-1] + a[0][j];
      l[0][j] = 1; 
    }else{
      console.log("0= ",j);
      console.log("1= ",f[1][j-1]);
      console.log("2= ",t[1][j-1]);
      console.log("3= ",a[1][j]);
      console.log("4= ",j);
      f[0][j] = f[1][j-1] + t[1][j-1] + a[1][j]
      l[0][j] = 2; 
    }
    if(f[1][j-1]+a[1][j] <= f[1][j-1] + t[1][j-1] + a[1][j]){
      f[1][j] = f[1][j-1] + a[1][j];
      l[1][j] = 2; 
    }else{
      f[1][j] = f[0][j-1] + t[0][j-1] + a[1][j]
      l[1][j] = 1; 
    }
  }
  // if(f[0][n] + x[0] <= f[1][2] + x[1]){

  // }
  console.log(n)
  console.log("A => ",f)
  console.log("B => ",l)
}
fastest_way(a,t,e,x,6);