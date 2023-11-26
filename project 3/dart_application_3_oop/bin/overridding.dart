void main() {
  var dog = Dog();
  dog.eat();
}

class Animal {
  String? color;
  void eat() {
    print("Animal is Eating!!!");
  }
}

class Dog extends Animal {
  String? breed;
  void bark() {
    print("Bark");
  }

  void eat() {
    super.eat();
    print("Dog is Eating!!!");
  }
}
