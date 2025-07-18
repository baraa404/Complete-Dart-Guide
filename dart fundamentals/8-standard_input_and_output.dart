// ignore_for_file: unused_local_variable
// ignore_for_file: dead_code
// ignore_for_file: equal_elements_in_set
import 'dart:io';

void main() {
  stdout.write("Enter your name: ");
  String? name = stdin.readLineSync();
  print("Your name is: $name");

  stdout.write("Enter your age: ");
  int? age = int.parse(stdin.readLineSync() ?? '');
  print("Your age is: $age");
}
