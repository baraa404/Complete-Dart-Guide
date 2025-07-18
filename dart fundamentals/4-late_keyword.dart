// ignore_for_file: unused_local_variable
// ignore_for_file: dead_code

/*
^ Late Keyword in Dart:
* The 'late' keyword tells Dart that a variable will be assigned a value later
* Used when you can't initialize a variable at declaration time
* Helps with null safety

& When to use 'late':
1. Variables that will be set before they are used
2. Variables that depend on other data
*/

void main() {
  print("=== Late Keyword Examples ===\n");

  // Example 1: Basic late variable
  print("1. Basic Late Variable:");
  late String message;
  message = "Hello Dart!"; // Must assign before using
  print("Message: $message\n");

  // Example 2: Late final variable (can only be set once)
  print("2. Late Final Variable:");
  late final String name;
  name = "Baraa";
  print("Name: $name\n");
}
