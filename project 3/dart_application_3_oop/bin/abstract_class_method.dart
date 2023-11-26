void main() {
  // var shape = Shape(); // error, cannot instantiate Abstract Class.
  var rectangle = Rectangle();
  rectangle.draw();

  var circle = Circle();
  circle.draw();
  circle.myNormalFuction();
}

abstract class Shape {
  int? x;
  int? y;

  void draw(); // Abstract Method, eikhane kisu likha jai na, error dibe
  void myNormalFuction() {
    print("object");
  }
}

// abstract class k parents class korle sob somoi abstract class er method k override korte hbe.
class Rectangle extends Shape {
  void draw() {
    print("Drawing rectangle");
  }
// abstract class er child class golate, sodo abstract class er method golai use kora jabe, new method use kora banale error asbe
  //void ami();
}

class Circle extends Shape {
  void draw() {
    print("Drawing circle");
  }
}
