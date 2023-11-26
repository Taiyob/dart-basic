// ignore_for_file: deprecated_member_use
// fixed list
void main() {
  List<int?> numberList = List.filled(5, 5);
  numberList[0] = 13;
  numberList[1] = 23;
  numberList[2] = 33;
  numberList[3] = null;
  numberList[4] = 53;
  print("3 no list er num hoilo:");
  print(numberList[3]);

  print("\n");
  print("For loop er out put:");
  for (int? e in numberList) {
    print(e);
  }
  print("\n");
  print("Foreach er output:");
  numberList.forEach((e) => print(e));
  print("\n");
  print("For Loop e length:");
  for (int i = 0; i < numberList.length; i++) {
    print(numberList[i]);
  }

  // Growable List method 1
  List<int> countList = [];
  countList.add(73);
  countList.add(64);
  countList.add(21);
  countList.add(12);
  //countList.remove(73);
  //countList.add(100);
  //countList.removeAt(2);
  print(countList);

  //method 2
  List<String> countries = ["USA", "BD", "AUS"];
  countries.add("CANADA");
  countries.add("UAE");
  print(countries);
}
