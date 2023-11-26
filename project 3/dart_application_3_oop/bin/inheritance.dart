void main() {
  print("hellow");
  var animal = Animal();
  animal.color = "white";
  print("From animal class ${animal.color}");
  animal.eat();

  var dog = Dog();
  dog.breed = "dog baby";
  print(dog.breed);
  dog.bark();
  dog.color = "black";
  print("Dog color ${dog.color}");
  dog.eat();

  var cat = Cat();
  cat.age = 12;
  print("Cat age ${cat.age}");
  cat.meow();
  cat.color = "Brwon";
  print("Cat color ${cat.color}");
  cat.eat();
}

class Dog extends Animal {
  String? breed;
  void bark() {
    print("Bark");
  }
}

class Cat extends Animal {
  int? age;
  void meow() {
    print("Meow");
  }
}

class Animal {
  String? color;
  void eat() {
    print("Eat!!!");
  }
}
