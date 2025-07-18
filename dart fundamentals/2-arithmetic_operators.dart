// ignore_for_file: unused_local_variable
// ignore_for_file: dead_code

void main() {
  print("&================= arithmetic Operators ===================&");

  int num1 = 10;
  int num2 = 20;
  int sum = num1 + num2;
  int sub = num1 - num2;
  int mul = num1 * num2;
  double div = num1 / num2;

  //the ~ operator is used to get the absolute value of the division
  int absolute_num = num1 ~/ num2;

  int mod = num1 % num2; //gets the remainder of the division
  print("sum = $sum");
  print("sub = $sub");
  print("mul = $mul");
  print("div = $div");
  print("absolute = $absolute_num");
  print("mod = $mod");

  print("&================= relational Operators ===================&");
  //&================= relational Operators===================&\\
  /*  ⁡⁢⁣⁢𝗗𝗶𝗳𝗲𝗻𝗲𝗶𝘁𝗶𝗼𝗻 : ⁡Relational operators are used to compare two values
   ⁡⁢⁣⁣Usage :⁡
   ► used to compare two values
   ► returns a boolean value (true or false)
   */

  int a = 10;
  int b = 20;
  print("a greater than b: ${a > b}"); // false
  print("a less than b: ${a < b}"); // true
  print("a equal to b: ${a == b}"); // false
  print("a not equal to b: ${a != b}"); // true
  print("a greater than or equal to b: ${a >= b}"); // false
  print("a less than or equal to b: ${a <= b}"); // true

  print("&================= logical Operators ===================&");
  //&================= logical Operators===================&\\
  /*  ⁡⁢⁣⁢𝗗𝗶𝗳𝗲𝗻𝗲𝗶𝘁𝗶𝗼𝗻 : ⁡Logical operators are used to combine two or more boolean values
   ⁡⁢⁣⁣Usage :⁡
   ► used to combine two or more boolean values
   ► returns a boolean value (true or false)
   */

  bool x = true;
  bool y = false;
  print("x and y: ${x && y}"); // false
  print("x or y: ${x || y}"); // true
  print("not x: ${!x}"); // false
  print("not y: ${!y}"); // true

  print("&================= type test operators ===================&");
  //&================= type test operstors ===================&\\
  /*  ⁡⁢⁣⁢𝗗𝗶𝗳𝗲𝗻𝗲𝗶𝘁𝗶𝗼𝗻 : ⁡Type test operators are used to check the type of a value
   ⁡⁢⁣⁣Usage :⁡
   ► used to check the type of a value
   ► returns a boolean value (true or false)
   */
  int num = 10;
  String str = "Hello";
  dynamic anything = 20;
  print(num is String);
  print(anything is int);

  print("================= assignment Operators ===================&");
  //&================= assignment Operators ===================&\\

  /*  ⁡⁢⁣⁢𝗗𝗶𝗳𝗲𝗻𝗲𝗶𝘁𝗶𝗼𝗻 : ⁡Assignment operators are used to assign a value to a variable
   ⁡⁢⁣⁣Usage :⁡
   ► used to assign a value to a variable
   ► returns the value assigned to the variable
   */
  int value = 10;
  print("Initialvalue is: $value");

  value += 5; // value = value + 5
  print("value after += : $value");

  value -= 3; // value = value - 3
  print("value after -= : $value");

  value *= 2; // value = value * 2
  print("value after *= : $value");

  value ~/= 4; // value = value ~/ 4
  print("value after ~/= : $value");

  print("&================= conditional Operators ===================&");
  //&================= conditional Operators ===================&\\

  /*  ⁡⁢⁣⁢𝗗𝗶𝗳𝗲𝗻𝗲𝗶𝘁𝗶𝗼𝗻 : ⁡Conditional operators are used to evaluate a condition and return a value based on the result
   ⁡⁢⁣⁣Usage :⁡
   ► used to evaluate a condition and return a value based on the result
   ► returns the value based on the condition
   */

  // *Teranary Operator
  // Syntax: condition ? value_if_true : value_if_false
  int number = 10;
  String result = (number % 2 == 0) ? "Even" : "Odd";
  print("The number is: $result");

  // *If-Else Operator
  String result2 = (number > 0)
      ? "$number is positive"
      : number < 0
      ? "$number is negative"
      : "Zero";
}
