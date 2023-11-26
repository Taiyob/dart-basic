//import 'dart:svg';

void main() {
  // method 1
  Set<String> countries = Set.from(["USA", "BD", "AUS"]);
  countries.add("Nepal");
  countries.add("Japan");
  print(countries);

  // method 2
  Set<int> numberSet = Set();
  numberSet.add(79);
  numberSet.add(89);
  numberSet.add(99);
  numberSet.add(59);
  numberSet.contains(79); // return true or false, j set e eita ase kina
  // for (int e in numberSet) {
  //   print(e);
  // }
  numberSet.forEach((element) => print(element));
}
