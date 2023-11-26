// OBject Oriented Programme
// getter and setter
bool isEmpty(String string) => string.length == 0;
void main() {
  var student = new Student();
  student.name = "siam"; // calling default setter to set value
  print(student.name); // calling default getter to get value
  student.percentage = 429.0; // calling custom setter to set value
  print(student.percentage); // calling custom getter to get value
}

class Student {
  String? name; // Instance varriable with getter and setter
  //int? percentage; // Instance varriable with getter and setter

  late double _percent; // percent is private instance varriable
  void set percentage(double marksSecured) {
    //instance varriable with custom setter
    _percent = (marksSecured / 500) * 100;
  }

  //instance varriable with custom getter
  double get percentage => _percent;
}
