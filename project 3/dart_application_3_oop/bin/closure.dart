import 'dart:io';

void main() {
  internetChecker();
  //type 1
  String message = "Dart is good";
  Function showMessage = () {
    message = "Dart is awesome";
    print(message);
  };
  showMessage();

  // type 2
  Function talk = () {
    String msg = "hi";
    Function say = () {
      msg = "hellow";
      print(msg);
    };
    return say();
  };
  talk();
}
Future internetChecker() async {
  try {
    await InternetAddress.lookup('google.com');
    print("have internet");
  } on SocketException {
    print("No ineternet");
  } catch (e) {
    print(e);
  }
}
