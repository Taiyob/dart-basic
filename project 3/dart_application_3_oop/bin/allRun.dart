import '../lib/dart_application_3_oop.dart';

void main() {
  // const time = 10;
  // if(time == 8){
  //   print('ok');
  // }else if(time == 9){
  //   print('fine');
  // }else if(time == 10){
  //   print('good');
  // }else{
  //   print('nai');
  // }
  // print('welcome');
  int age = 100;
  String userName = 'Rahim';
  userName = "Abdul";
  userName = '''Ovi''';
  print(userName.toUpperCase());
  String address = 'Dhaka';
  String fullDetails = userName + '' + address;
  print(fullDetails.contains('ka'));
  String result = age.toString() + address;
  print(result.length);
  print(result.endsWith(''));
  print(result.startsWith(''));
  print(result[5]);
  double pi = 3.1416;
  print(pi.runtimeType);
  print(pi.toStringAsFixed(2));

  var x = 5;

  for (var i = 0; i < x; i++) {
    if (i == 3) continue;

    print('ami');
    print(i);
  }

  String str = "Hello this is Ostad batch 5";

  var items = str.split('Ostad');
  print(items.runtimeType);
  print(items);

  String strr = "Hello this is Ostad batch 5";

  var itemss = strr.split('Ostad');
  print(itemss);
  print(itemss.length);

  List<int> courseScore = [100, 90, 80];
  calculate() {
    int totalNumber = 0;
    double avg = 0;
    for (int i = 0; i < courseScore.length; i++) {
      totalNumber = courseScore[i] + totalNumber;
    }
    avg = totalNumber / 3;
    print('avg score is: $avg');
  }
  calculate();


  List<String> coursesTaught = ['bangla', 'english', 'math'];
  void displayCourse() {
    for (var course in coursesTaught) {
      print('- $course');
    }
  }
  displayCourse();
}
