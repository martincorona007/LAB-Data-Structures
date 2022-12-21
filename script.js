//Master the Coding Interview Data Structures and Algorithms
const boxes = [0, 1, 2, 3, 4, 5];

function logFirstTwoBoxes(boxes) {
  conosole.log(boxes[0]); //O(1)
  conosole.log(boxes[1]); //O(1) running once
}
logFirstTwoBoxes(boxes); //O(2)
//30 Big O calculation
// What is the Big O of the below function? (Hint, you may want to go line by line)
function funChallenge(input) {
  let a = 10; //O(1)
  a = 50 + 3; //O(1)

  for (let i = 0; i < input.length; i++) { //O(n)
    anotherFunction(); //O(1)
    let stranger = true; //O(1)
    a++; //O(n)
  }
  return a;
}
//O(n)
// What is the Big O of the below function? (Hint, you may want to go line by line)
function anotherFunChallenge(input) {
  let a = 5; //O(1)
  let b = 10; //O(1)
  let c = 50; //O(1)
  for (let i = 0; i < input; i++) { //O(n)
    let x = i + 1;
    let y = i + 2;
    let z = i + 3;

  }
  for (let j = 0; j < input; j++) { ///O(n)
    let p = j * 2;
    let q = j * 2;
  }
  let whoAmI = "I don't know"; //O(1)
}
//O(n)
["paco", "1", "2", "3"];
["1", "2", "3", "paco"];

function printFirstItemThenFirstHalfThenSayHi100Times(items) {
  console.log(items[0]);

  var middleIndex = Math.floor(items.length / 2);
  var index = 0;

  while (index < middleIndex) {
    console.log(items[index]);
    index++;
  }

  for (var i = 0; i < 100; i++) {
    console.log('hi');
  }
}
//O(1 + n/2 + 100) = O(n)
function compressBoxesTwice(boxes, boxes2) {
  boxes.forEach(function (boxes) {
    console.log(boxes);
  });
  boxes2.forEach(function (boxes) {
    console.log(boxes);
  });
}
const boxes = ['a', 'b', 'c', 'd', 'e'];

function logAllPairsOfArray(array) {
  for (let i = 0; i < array.length; i++) {
    for (let j = 0; j < array.length; j++) {
      console.log(array[i], array[j]);
    }
  }
}
logAllPairsOfArray(boxes);

function printAllNumbersThenAllPairSums(numbers) {
  // ***
  console.log('these are the numbers:');
  numbers.forEach(function (number) {
    console.log(number);
  });
  // +++
  console.log('and these are their sums:');
  numbers.forEach(function (firstNumber) {
    numbers.forEach(function (secondNumber) {
      console.log(firstNumber + secondNumber);
    });
  });
}

printAllNumbersThenAllPairSums([1, 2, 3, 4, 5])
//=================================================S3
//>>>>30
// What is the Big O of the below function? (Hint, you may want to go line by line)
function funChallenge(input) {
  let a = 10; //O(1)
  a = 50 + 3; //O(1)
  for (let i = 0; i < input.length; i++) { //O(n)
    anotherFunction(); //O(n)
    let stranger = true; //O(n)
    a++; //O(n)
  }
  return a; //O(1)
}
//3 + n + n + n + n
// 3+4n
//BIG O(3+4n)
//BIG O(n)
//calis

//>>>>38
function printAllNumbersThenAllPairSums(numbers) {
  console.log('these are the nummbers: ');
  numbers.forEach(function (number) {
    console.log(number);
  });
  console.log('and these are their sums: ');
  numbers.forEach(function (firstNumber) {
    numbers.forEach(function (secondNumber) {
      console.log(firstNumber + secondNumber);
    });
  });


}
printAllNumbersThenAllPairSums([1, 2, 3, 4, 5])
//>>>>40
/*
	Exercise: Space Complexity
*/
/*
Time complexity = O(n)
Scapce complexity = ?
*/
function boooo(n) {
  //Are we adding any space? yes let i=0; So splace complexity is //O(1)
  for (let i = 0; i < n.length; i++) {
    console.log('boooo!');
  }
}
boooo([1, 2, 3, 4, 5]);

/*
Time complexity = ?
Scapce complexity = O(n)
*/
function arrayOfHiNTimes(n) {
  let hiArray = []; //we create a data structure
  for (let i = 0; i < n; i++) { //let i=0 O(1) but rule 2 
    hiArray[i] = 'hi'; //and adding memory
  }
  return hiArray;
}
arrayOfHiNTimes(6); // O(n)
//>>>>46
const nemo = ['nemo'];
const everyone = ['dory', 'bruce', 'marlin', 'nemo', 'gill', 'bloat', 'nigel', 'squirt', 'darla', 'hank'];
const large = new Array(1000000).fill('nemo');

function finNemo(array) {
  for (let i = 0; i < array.length; i++) {
    if (array[i] === 'nemo') {
      console.log('Found NEMO!');
    }
  }
}
findNemo(everyone);
//=> arrow functions new in ES6(Javascript)
const findNemo2 = array => {
  array.forEach(fish => {
    console.log('Found NEMO!');
  })
}

const findNemo3 = array => {
  for (let fish of array) {
    if (fish === 'nemo') {
      console.log('Found NEMO!');
    }
  }
}
findNemo2(everyone)
findNemo3(everyone)