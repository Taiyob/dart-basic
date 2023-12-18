// void main() {
//   print(name);
//   print(name.length);
//   print(name[5]);
//   print(name.substring(0, 4));
//   print(name.replaceAll('L', '-'));
// }

// String name = 'MD OLI ULLAH';


// Define Role interface
abstract class Role {
  void displayRole();
}

// Define Person class implementing Role interface
class Person implements Role {
  String name;
  int age;
  String address;

  Person(this.name, this.age, this.address);

  @override
  void displayRole() {
    print('Role: Person');
  }

  String getName() {
    return name;
  }

  int getAge() {
    return age;
  }

  String getAddress() {
    return address;
  }
}

// Define Student class extending Person
class Student extends Person {
  int studentId;
  List<int> courseScores;

  Student(String name, int age, String address, this.studentId, this.courseScores)
      : super(name, age, address);

  @override
  void displayRole() {
    print('Role: Student');
    print('Name: $name');
    print('Age: $age');
    print('Address: $address');
    print('Average Score: ${calculateAverageScore().toStringAsFixed(1)}');
  }

  double calculateAverageScore() {
    if (courseScores.isEmpty) {
      return 0.0;
    }
    return courseScores.reduce((a, b) => a + b) / courseScores.length;
  }
}

// Define Teacher class extending Person
class Teacher extends Person {
  String teacherId;
  List<String> coursesTaught;

  Teacher(String name, int age, String address, this.teacherId, this.coursesTaught)
      : super(name, age, address);

  @override
  void displayRole() {
    print('Role: Teacher');
    print('Name: $name');
    print('Age: $age');
    print('Address: $address');
    print('Courses Taught:');
    for (var course in coursesTaught) {
      print('- $course');
    }
  }
}

// Define StudentManagementSystem class with main method
void main() {
  // Create instances of Student and Teacher classes
  var student = Student('John Doe', 20, '123 Main St', 123, [90, 85, 82]);
  var teacher = Teacher('Mrs. Smith', 35, '456 Oak St', 'T123', ['Math', 'English', 'Bangla']);

  // Display the role of each person
  student.displayRole();
  print('\n');
  teacher.displayRole();
}


// You are given a string 

// S of length 5, representing a simple arithmetic equation. The equation follows a specific pattern: the first and last characters are digits ('0' to '9'), the third character is an arithmetic operator ('+', '-', '*', '/'), and the second and fourth characters are spaces.

// Your task is to parse the equation, perform the arithmetic operation, and print the resulting value.

// Input
// The input consists of a single string S with a length of 5, following the pattern described above.

// Output
// Print the parsed equation along with the calculated result, formatted as described in the examples.

// import 'dart:io';
 
// void main() {
//     // Write your dart code from here
//     var s = '5 + 3';
//     List<String> d = s.split(' ');
//     var v1 = int.parse(d[0]);
//     var v2 = d[1];
//     var v3 = int.parse(d[2]);
//     late var x;
//     switch(v2){
//         case '+':
//         x = v1 + v3;
//         break;
//         case '-':
//         x = v1 - v3;
//         break;
//         case '*':
//         x = v1 * v3;
//         break;
//         case '/':
//         x = v1 ~/ v3;
//         break;
//         default:
//         print('invalid');
//         return;
//     }
//     print(x);
// }

// import 'dart:io';
// void main() {
// String input = stdin.readLineSync()!;
// var t = input.split(' ');

// int ttt =int.parse(t[0]);
// int helo = int.parse(t[2]);

// int sum =0;
// String oparetor =t[1];

// if(oparetor == "+"){

//     sum = ttt + helo ;

// }

// else if(oparetor == "-"){

//     sum = ttt - helo ;

// }

// else if(oparetor == "*"){

//     sum = ttt * helo ;

// }


// else if(oparetor == "/"){

//     sum = ttt ~/ helo ;

// }

// else if (oparetor == "+"){

//     sum = ttt + helo ;

// }





// print(sum);

// }



// import 'dart:io';

// void main() {
//   // Write your dart code from here
//   var s = '5 + 3';
//   List<String> d = s.split(' ');
//   var v1 = int.parse(d[0]);
//   var v2 = d[1].trim(); 
//   var v3 = int.parse(d[2]);
//   late int x;
//   switch (v2) {
//     case '+':
//       x = v1 + v3;
//       break;
//     case '-':
//       x = v1 - v3;
//       break;
//     case '*':
//       x = v1 * v3;
//       break;
//     case '/':
//       x = v1 ~/ v3;
//       break;
//     default:
//       print('invalid');
//       return;
//   }
//   print(x);
// }


// In this problem you take two inputs: a string 

// S which denotes the dress code (casual or festive) and an integer 

// T the temperature (in Celsius). Based on these inputs, your program should suggest an appropriate outfit for the party.

// Here are the dress code guidelines:

// If the dress code is casual and the temperature is between 15°C and 25°C (inclusive), suggest "Jeans and a light jacket."

// If the dress code is festive and the temperature is above 25°C, suggest "Colorful dress and sandals."

// For all other cases, suggest "Wear what you're comfortable in."

// Input
// The input consists of two lines:

// The dress code (a string: "casual", or "festive").
// The temperature (an integer, 0 to 40).
// Output
// Print the suggested outfit based on the given inputs.
//20°
// Constraints
// 0 
// ≤
// ≤ 
// �
// T 
// ≤
// ≤ 40
// Example 1:
// Input:
// casual
// 20
// Output:
// Jeans and a light jacket.

  
