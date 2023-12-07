void main() {}

abstract class Role {
  void displayRole();
}

class Person implements Role {
  String? name;
  String? age;
  String? address;
  Person(this.name, this.age, this.address);

  @override
  void displayRole() {
    // TODO: implement displayRole
  }
}

class Student extends Person {
  String? studentID;
  String? grade;
  List<int> courseScore = [10, 10, 10];
  Student(this.studentID, this.grade) : super('name', 'age', 'address');
  @override
  void displayRole() {
    print('Role: Student');
  }

  void calculate() {
    int totalNumber = 0;
    double avg;
    for (int i = 0; i < courseScore.length; i++) {
      totalNumber = courseScore[i] + totalNumber;
    }
    avg = totalNumber / 3;
  }
}

class Teacher extends Person {
  String? teacherID;
  List<String> coursesTaught = ['bangla', 'english', 'math'];
  Teacher(this.teacherID) : super('name', 'age', 'address');
  @override
  void displayRole() {
    print('Role: Teacher');
  }

  void displayCourse() {}
}
