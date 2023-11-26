void main() {
  var st = new Student(31, "Siam"); // object
  //st.id = 31;
  //st.name = "siam";
  print("${st.id} and ${st.name}");
  st.study();
  st.sleep();

  var br = new Student(62, "oli"); // object
  //br.id = 62;
  //br.name = "oli";
  print("${br.id} and ${br.name}");
  br.study();
  br.sleep();

  var cus = Student.muCustomconstructor();
  cus.id = 262;
  cus.name = "smith";
  print("${cus.id} and ${cus.name}");

  var anocus = Student.anotherCustom(100, "Carlos");
  print("${anocus.id} and ${anocus.name}");
}

class Student {
  int? id;
  String? name;
  // Default constructor always run fast than another code.
  // Default constructor and Parameter constructor will be not working together.
  // Student() {
  //   // this is default constructor
  //   print("This is default constructr");
  // }

  // Parameter constructor 2types of structures:
  // Student(int id, String name) {
  //   this.id = id;
  //   this.name = name;
  // }  or
  Student(this.id, this.name);

  // Custom Constructor / name constructor
  Student.muCustomconstructor() {
    print("This is custom constructor");
  }
  Student.anotherCustom(this.id, this.name);

  void study() {
    print("${this.name} is now studying");
  }

  void sleep() {
    print("${this.name} is now sleeping");
  }
}
