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
