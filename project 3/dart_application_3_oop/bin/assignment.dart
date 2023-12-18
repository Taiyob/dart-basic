void main() {
  Student obSt = Student('St007', 'GPA-5.00', 'Siam', 20, '36, North Kafrul');
  obSt.displayRole();
  obSt.courseScore = [10, 10, 10];
  obSt.displayInformation();
  obSt.calculate();

  Teacher obTh = Teacher('DH-2022', 'Abul Hussain', 45, 'Dhaka, Ibrahimpur');
  obTh.displayRole();
  obTh.coursesTaught = ['bangla', 'english', 'math'];
  obTh.displayInformation();
  obTh.displayCourse();
}

abstract class Role {
  void displayRole();
}

class Person implements Role {
  String? name;
  int? age;
  String? address;
  Person(this.name, this.age, this.address);

  @override
  void displayRole() {
    
  }
}

class Student extends Person {
  String? studentID;
  String? grade;
  List<int> courseScore = [];
  Student(this.studentID, this.grade, String name, int age, String address) : super(name, age, address);
  @override
  void displayRole() {
    print('Role: Student');
  }

  calculate() {
    int totalNumber = 0;
    double avg = 0;
    for (int i = 0; i < courseScore.length; i++) {
      totalNumber = courseScore[i] + totalNumber;
    }
    avg = totalNumber / courseScore.length;
    print('avg score is: $avg');
  }
  void displayInformation(){
    print('Name: $name');
    print('Age: $age');
    print('Address: $address');
    print('StudentId: $studentID');
    print('Grade: $grade');
  }
}

class Teacher extends Person {
  String? teacherID;
  List<String> coursesTaught = [];
  Teacher(this.teacherID, String name, int age, String address) : super(name, age, address);
  @override
  void displayRole() {
    print('Role: Teacher');
  }

  void displayCourse() {
    for (var course in coursesTaught) {
      print('course name: $course');
    }
  }
  void displayInformation(){
    print('Name: $name');
    print('Age: $age');
    print('Address: $address');
    print('Teacher Id: $teacherID');
  }
}
