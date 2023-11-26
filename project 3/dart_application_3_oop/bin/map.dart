void main() {
  Map<String, String> fruits = Map();
  fruits["apple"] = "red";
  fruits["banana"] = "yellow";
  fruits["guava"] = "green";
  fruits.containsKey("apple");
  fruits.update("apple", (value) => "pink");
  print(fruits["apple"]);

  // for (String key in fruits.keys) {
  //   print(key);
  // }
  // for (String value in fruits.values) {
  //   print(value);
  // }
  //fruits.forEach((key, value) => print("Key: $key and value: $value"));
  Map<String, int> countDialCode = {"USA": 1, "INDIA": 97, "PAKISTAN": 92};
  print(countDialCode);
}
