/*
Comment section:
*/

void main() {
  // main() is the one kind of method or function which is run the programme at first.
  //print('Hello world:');
  //print("Started a new journey with DART");
  //print(1 + 1);

  //int value
  // int age = 30;
  // var ages = 30;
  // int l = 10;
  // int w = 20;

  //double
  // double percentage = 98.5;
  // var mark = 75.5;

  //string values
  // String name = "Oli";

  // var company = "simplex solution";
  // var details = 'Hello! this is $name\'s house ' + name.length.toString();
  // String student = 'The number of character is ${name.length}';

  //boolen
  // bool isValid = true;
  // bool isAlive = true;

  // print(age);
  // print(ages);
  // print("My name is $name");
  // print(details);
  // print(isValid);
  // print(percentage);
  // print(mark);
  // print(company);
  // print(isAlive);
  // print(student);
  // print("the sum of $l and $w is ${l + w}");
  // print("the multiple of $l and $w is ${l * w}");

  // rune type:
  // final cityName = 'Mumbai';

  // const pI = 3.14;

  // print(cityName);
  // print(pI);
  //
  // var result = 210;
  // if (result >= 80 && result < 100) {
  //   print('It is A+');
  // } else if (result >= 70 && result < 80) {
  //   print('It is A');
  // } else if (result >= 60 && result < 70) {
  //   print('It is B');
  // } else if (result >= 30 && result < 60) {
  //   print('It is C');
  // } else if (result >= 0 && result < 30) {
  //   print('It is Fail');
  // } else {
  //   print('Invalid Marks!!!');
  // }

  // int a = 2;
  // int b = 3;
  // int smallNumber;
  // if (a < b) {
  //   smallNumber = a;
  // } else {
  //   smallNumber = b;
  // }
  // print("$smallNumber is smaller");

  // int aa = 20;
  // int bb = 30;
  // int $smallDigit;
  // var smallDigit;
  // aa < bb
  //     ? print("$smallDigit = $aa is smaller than $bb")
  //     : print("$smallDigit = $bb is smaller than $aa");

  // int aaa = 1000;
  // int bbb = 200;
  //int lowestDigit;
  // int lowestDigit = aaa < bbb ? aaa : bbb;
  // print('$lowestDigit is lower');

  // String? name = null;
  // String user = name ?? "Guest User";
  // print(user);

  // loop
  // for (int i = 1; i <= 4; i++) {
  //   if (i % 2 == 0) {
  //     print(i);
  //   }
  // }
  // List gameLists = ["Football", "Cricket", "Basketball", "Volyball", "Hockey"];
  // for (String games in gameLists) {
  //   print(games);
  // }
  // int j = 0;
  // while (j <= 10) {
  //   if (j % 2 == 1) {
  //     print(j);
  //   }
  //   j++;
  // }
  // int k = 0;
  // do {
  //   if (k % 2 == 0) {
  //     print("$k number");
  //   }
  //   k++;
  // } while (k <= 10);

  // myOuterloop:
  //  for (int oli = 1; oli <= 3; oli++) {
  //   myInnerloop:
  //   for (int siam = 1; siam <= 3; siam++) {
  //     if (oli == 2 && siam == 2) {
  //       break myOuterloop;
  //     }
  //     print("$oli oli and siam $siam");
  //   }
  // }
  // for (int m = 1; m <= 10; m++) {
  //   if (m % 2 == 0) {
  //     continue;
  //   }
  //   print("$m is for running");
  // }
  // innerLoop:
  // for (int n = 1; n <= 3; n++) {
  //   for (int o = 1; o <= 3; o++) {
  //     if (n == 2 && o == 2) {
  //       continue innerLoop;
  //     }
  //     print("$n and $o are here");
  //   }
  // }

  // Exception Handling
  print("case 1:");
  //when we know the exception
  // IntegerDivisionByZeroException
  try {
    int result = 12 ~/ 0;
    print("The result is $result");
  } on UnsupportedError {
    print("Can not divided by zero");
  }

  print("case 2:");
  //when we do not know the exception
  try {
    int result = 12 ~/ 0;
    print("The result is $result");
  } catch (e) {
    print("The exception thrown is $e");
  }

  print("case 3:");
  //Using stack trace to know the events occured bedore
  try {
    int result = 12 ~/ 0;
    print("The result is $result");
  } catch (e, s) {
    print("The exception thrown is $e");
    print("Stack trace \n $s");
  }

  print("case 4:");
  //Finally always executed
  try {
    int result = 12 ~/ 0;
    print("The result is $result");
  } catch (e) {
    print("The exception thrown is $e");
  } finally {
    print("This is finally clause always executed.");
  }

  print("case 5:");
  //Custom exception
  try {
    depositMoney(-2200);
  } on DepositException catch (e) {
    print(e.errorMessage());
  }

  //measuringArea(10, 20);
  //print(rectangular(5, 4));
  //nameCountries("USA");
  //print(findVolume(5, breath: 10, height: 20));
}

class DepositException implements Exception {
  String errorMessage() {
    return "You can not enter ammount less than 0";
  }
}

void depositMoney(int ammount) {
  if (ammount < 0) {
    throw new DepositException();
  }
}

// Function
void measuringArea(int height, int length) => print(height * length);

int rectangular(int heights, int width) => 2 * (heights * width);

void nameCountries(String nameOne, [String? nameTwo, String? nameThree]) {
  print("Name One is $nameOne");
  print("Name Two is $nameTwo");
  print("Name Three is $nameThree");
}

int findVolume(int length, {int? breath, int? height}) {
  print("length is $length");
  print("breath is $breath");
  print("height is $height");

  // return("volume is ${length * breath! * height!}");
  return length * breath! * height!;
}

class Circle {
  final color = 'red';
  static const pI = 3.15;
}
