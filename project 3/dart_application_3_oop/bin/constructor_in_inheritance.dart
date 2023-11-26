//1. Inheritance with default constructor and parameterised constructor
//2. Inheritance with Named constructor.

void main() {
  var dog1 = Dog("Labrador", "Black");
  print("");
  var dog2 = Dog("pug", "Brown");
  print("");
  var body = Body.myNamedConstructor("OK", "OK");
}

class Animal {
  String? color;
  Animal(String color) {
    this.color = color;
    print("Animal Class Constructor");
  }
}

class Dog extends Animal {
  String? breed;
  // Dog(String breed) {
  //   print("Dog class constructor");
  // }
  Dog(String breed, String color) : super(color) {
    this.breed = breed;
    //this.color = color;
    print("Dog class constructor");
  }
}

// Named class constructor
// named class constructor korar somoi, er j super class thake, seikhane zero argument hoite hobe, otherwise error dekhabe.
// r jodi argument pass kora hoi tokon super keyword use kore argument pass korte hbe.

class Tiger {
  String? paint;
  Tiger(String paint) {
    print("Tiger class constructor");
  }
  Tiger.myTigerConstructor() {
    print("Tiger class named constructor");
  }
}

class Body extends Tiger {
  String? breed;
  Body.myNamedConstructor(String breed, String color)
      : super.myTigerConstructor() {
    print("Body class named constructor");
  }
}
