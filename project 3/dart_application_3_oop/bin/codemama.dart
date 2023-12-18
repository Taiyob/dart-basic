import 'dart:io';

void main(){
  // String s = 'casual';
  // int t = 30;
  // if(s == 'casual' && t > 15 && t < 25 ){
  //   print(' Wear Jeans and a light jacket.');
  // }else{
  //   print('Wear Colorful dress and sandals.');
  // }
  String s = stdin.readLineSync()!;
  int t = int.parse(stdin.readLineSync()!);

  if (s == 'casual' && t >= 15 && t <= 25) {
    print('Jeans and a light jacket.');
  } else if (s == 'festive' && t > 25) {
    print('Colorful dress and sandals.');
  } else {
    print('Wear what you\'re comfortable in.');
  }
}

