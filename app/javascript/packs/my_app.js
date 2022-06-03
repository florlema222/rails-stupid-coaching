function test () {
  let a = "3";
  let b = "8";

  let c = a;
  a = b;
  b = c;

  console.log(a);
  console.log(b);
}

test()

function test2 () {
  const sentence = prompt("Write something as a tweet: ")
  alert("You've written " + sentence.length + " characters, you have " + (240 -(sentence.length)) + " characters left") ;
}

test2()
