void main() {
  Function addNumber = (a, b) => print(a + b);
  someOtherFunction("hellow", addNumber);

  var myFunc = taskPerform();
  print(myFunc(10));
}

void someOtherFunction(String message, Function myFunction) {
  print(message);
  myFunction(2, 4);
}

Function taskPerform() {
  Function multiplyFour = (int num) => num * 4;
  return multiplyFour;
}
