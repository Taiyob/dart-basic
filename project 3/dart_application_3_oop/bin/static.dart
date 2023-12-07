void main() {
  var cir = circle;
  //cir.pi;   //not allwed when static
  print(circle.pi);
  circle.calculateArea();
}

// const thakle sei value kono jaigai r change kora jabe na
class circle {
  static const double pi = 3.14;
  String? color;
  static void calculateArea() {
    print("Some code of calculate area of Circle");
    //myNormalFunction(); // not allwed when static
    //this.color; // same to same
  }

  void myNormalFunction() {
    circle.calculateArea();
  }
}
