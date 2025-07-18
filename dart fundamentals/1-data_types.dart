void main() {
  String name = 'baraa';
  print("Hello $name");

  int age = 21;
  print("your $age");

  print("your name and age {$name and $age}");

  double gpa = 3.2;
  print("your $gpa");

  bool Isgood = true;
  print(Isgood);

  // accpets any datatypes if i dont know the type of the data
  dynamic anything = 33;
  print(anything);

  // keyword var is used to declare a variable without specifying its type
  // auto detect the type of the data

  //always declare in the same line
  var text = 'hi';
  //text = 22; //error
  print(text);

  //dynamic not good to use
  var something;
  something = 21;
  something = 'man';
  print(something);

  //&==============================================================&\\
  int Pass_Grade = 50;
  int Student_Grade = 70;

  bool DidPass = Student_Grade > Pass_Grade;

  print(DidPass);

  print("&================= String  ===================&");
  //&================= String  ===================&\\
  String firstName = 'Baraa';
  String favLang = 'Dart';
  print(firstName + " loves " + favLang);
  //dot operator is used to access the properties and methods of a class
  String name2 = 'baraa';
  print(name2.toUpperCase());

  int age2 = 21;
  print(age2.isEven);

  //some strings methods
  String texts = "Hello, Dart!";
  print(texts.length); // Length of the string
  print(texts.toUpperCase()); // Convert to uppercase
  print(texts.toLowerCase()); // Convert to lowercase
  print(texts.contains("Dart")); // Check if the string contains "Dart"
  print(texts.split(", ")); // Split the string into a list
  print(texts.replaceAll("Dart", "Flutter")); // Replace "Dart" with "Flutter"
  print(texts.startsWith("Hello")); // Check if the string starts with "Hello"
  print(texts.endsWith("!")); // Check if the string ends with "!"
  print(texts.indexOf("Dart")); // Find the index of "Dart"
  print(texts.substring(7, 11)); // Extract a substring from index 7 to 11
  print(texts.trim()); // Remove leading and trailing whitespace
  print(texts.isEmpty); // Check if the string is empty
  print(texts.isNotEmpty); // Check if the string is not empty
  
}
