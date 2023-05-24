const stack = [];

const add = val => stack.push(val);
const remove = () => stack.pop();

add('one');
add('two');
add('three');
remove();
	console.log(stack); // ["one", "two"]x