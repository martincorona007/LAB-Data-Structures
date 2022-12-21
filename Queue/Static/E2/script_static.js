const queue = [];

const add = val => queue.push(val);
const remove = () => queue.shift();

add('one');
add('two');
add('three');
remove();
console.log(queue); // ["two", "three"]