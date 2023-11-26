void main() {
  var tv = Television();
  tv.volumUp();
  tv.volumUp();
  tv.justAnotherMethod();
}

class Remote {
  void volumUp() {
    print("Volum up from remote");
  }

  void volumDown() {
    print("Volum down from remote");
  }
}

class AnotherClass {
  void justAnotherMethod() {
    //code....
  }
}

// when we use implement keyword, it perform as a interface of his parents classs.
// when we implement any class, we must be override the parents class method.
class Television implements Remote, AnotherClass {
  void volumUp() {
    print("Volum up from remote");
  }

  void volumDown() {
    print("Volum down from remote");
  }

  void justAnotherMethod() {
    print("HOKE");
  }
}
