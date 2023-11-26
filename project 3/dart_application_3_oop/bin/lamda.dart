void main() {
  // Lamda expression
  //1st way........
  Function addTwoNumbers = (int a, int b) {
    var sum = a + b;
    print(sum);
  };
  var multiplyByFour = (int num) {
    return num * 4;
  };
  // 2nd way
  Function addNumbers = (int a, int b) => print(a + b);
  var multiple = (int number) => number + 4;

  // calling lamda expression
  addTwoNumbers(2, 3);
  print(multiplyByFour(5));
  addNumbers(5, 5);
  print(multiple(2));

  // String convertTk(String price){
  //   List EngTk = ['1','2','3','4','5','6','7','8','9','0'];
  //   List banglaTk = ['১','২','৩','৪','৫','৬','৭','৮','৯','০'];

  //   for(int a =0; a<banglaTk.length; a++){
  //     price = price.replaceAll(EngTk[a], banglaTk[a]);
  //   }
  //   return price;
  // }
  // print(convertTk('9'));
  // print(convertTk('5'));
  // print(convertTk('4'));
  // print(convertTk('6'));
  // print(convertTk('2465654'));


//   String convertTk(String price){
//     List EngTk = ['1','2','3','4','5','6','7','8','9','0'];
//     List banglaTk = ['১','২','৩','৪','৫','৬','৭','৮','৯','০'];

//     for(int a =0; a<EngTk.length; a++){
//       price = price.replaceAll(banglaTk[a], EngTk[a]);
//     }
//     return price;
//   }
//   print(convertTk('৩'));
//   print(convertTk('৫'));
//   print(convertTk('৯'));
//   print(convertTk('১'));
//   print(convertTk('৯১৩'));


//   import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';

// class MyTimerConvert extends StatefulWidget {

//   @override
//   State<MyTimerConvert> createState() => _MyTimerConvertState();
// }

// class _MyTimerConvertState extends State<MyTimerConvert> {


//   String Timeconver(String GiveYourTime){

//     var newtime = GiveYourTime.split(":")[0];

//     List time24 = ["13","14","15","16","17","18","19","20","21","22","23","24"];

//     List time12 = ["01","02","03","04","05","06","07","08","09","10","11","12"];

//     for(int a= 0; a <time12.length; a++){
//       newtime = newtime.replaceAll(time24[a],time12[a]);
//     }
//     return newtime+":"+GiveYourTime.toString().split(":")[1];
//   }


//   @override
//   Widget build(BuildContext context) {


//     return Scaffold(
//       body: SafeArea(
//           child: Center(child: Text(Timeconver("15:13 এখন সময়").toString())) ),
//     );
//   }
// }

}
