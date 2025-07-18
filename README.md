# 🎯 Complete Dart Programming Guide
### From Fundamentals to Object-Oriented Programming - A Comprehensive Learning Resource

---

## 👨‍💻 About This Guide

**Made with ❤️ by Baraa Mabrok**

📧 **Email**: [baraa0email@gmail.com](mailto:baraa0email@gmail.com)  
💼 **LinkedIn**: [Baraa Mabrok](https://www.linkedin.com/in/baraa-mabrok-6b15b1356/)  
🐙 **GitHub**: [baraa404](https://github.com/baraa404) - *Find all the source files here*

---

## 📋 Table of Contents

### Part I: Dart Fundamentals
1. [🎪 Data Types](#1--data-types---the-foundation)
2. [⚙️ Operators](#2-️-operators---working-with-data)
3. [📦 Collections](#3--collections---storing-multiple-values)
4. [⏰ Late Keyword](#4--late-keyword---delayed-initialization)
5. [🛡️ Null Safety](#5-️-null-safety---avoiding-null-errors)
6. [🔀 Conditionals](#6--conditionals---making-decisions)
7. [🔄 Loops](#7--loops---repeating-actions)
8. [🔧 Functions](#8--functions---reusable-code-blocks)
9. [💬 Input & Output](#9--input--output---user-interaction)
10. [🚨 Error Handling](#10--error-handling---try--catch)

### Part II: Object-Oriented Programming
11. [📦 Classes](#11--classes---the-oop-foundation)
12. [🏗️ Constructors](#12-️-constructors---object-creation)
13. [🔒 Private Variables & Getters/Setters](#13--private-variables--getterssetters)
14. [👨‍👩‍👧‍👦 Inheritance](#14--inheritance---code-reuse)
15. [🔄 Method Overriding](#15--method-overriding---customizing-behavior)
16. [📋 Abstract Classes](#16--abstract-classes---templates--contracts)
17. [📝 Implements](#17--implements---pure-contracts)
18. [🎭 Polymorphism](#18--polymorphism---many-forms)
19. [🧩 Mixins](#19--mixins---flexible-code-sharing)
20. [👻 Anonymous Objects](#20--anonymous-objects---use-and-forget)
21. [📊 Enums](#21--enums---named-constants)

---

# Part I: Dart Fundamentals

## 1. 🎪 Data Types - The Foundation

### 🤔 What Are Data Types?

**Data types** define what kind of information a variable can store. Think of them as different containers for different types of information.

### 🔑 Basic Data Types

- **String**: Text and characters (`'Hello'` or `"World"`)
- **int**: Whole numbers (`21`, `100`, `-5`)
- **double**: Decimal numbers (`3.14`, `2.5`)
- **bool**: True or false values (`true`, `false`)
- **dynamic**: Can hold any type of data
- **var**: Auto-detects the type

### 💻 Code Example

```dart
void main() {
  // String - for text
  String name = 'Baraa';
  print("Hello $name");

  // int - for whole numbers
  int age = 21;
  print("Your age: $age");

  // String interpolation with multiple variables
  print("Your name and age: $name and $age");

  // double - for decimal numbers
  double gpa = 3.2;
  print("Your GPA: $gpa");

  // bool - for true/false values
  bool isGood = true;
  print("Is good student: $isGood");

  // dynamic - accepts any data type
  dynamic anything = 33;
  print("Dynamic variable: $anything");

  // var - auto-detects type
  var text = 'Hi';
  print("Auto-detected text: $text");
  // text = 22; // Error! Once type is set, it can't change

  // Example: Grade calculation
  int passGrade = 50;
  int studentGrade = 70;
  bool didPass = studentGrade > passGrade;
  print("Did student pass? $didPass");
}
```

### 🔤 String Methods

Strings come with many built-in methods for manipulation:

```dart
String text = "Hello, Dart!";

// Basic properties and methods
print(text.length);                    // Length: 12
print(text.toUpperCase());             // HELLO, DART!
print(text.toLowerCase());             // hello, dart!
print(text.contains("Dart"));          // true
print(text.split(", "));               // [Hello, Dart!]
print(text.replaceAll("Dart", "Flutter")); // Hello, Flutter!
print(text.startsWith("Hello"));       // true
print(text.endsWith("!"));             // true
print(text.indexOf("Dart"));           // 7
print(text.substring(7, 11));          // Dart
print(text.trim());                    // Removes whitespace
print(text.isEmpty);                   // false
print(text.isNotEmpty);                // true
```

---

## 2. ⚙️ Operators - Working with Data

### 🤔 What Are Operators?

**Operators** are symbols that perform operations on variables and values. They're like mathematical symbols but for programming.

### 🔧 Types of Operators

#### ➕ Arithmetic Operators
Perform mathematical calculations

```dart
int num1 = 10;
int num2 = 20;

int sum = num1 + num2;        // Addition: 30
int sub = num1 - num2;        // Subtraction: -10
int mul = num1 * num2;        // Multiplication: 200
double div = num1 / num2;     // Division: 0.5
int absoluteDiv = num1 ~/ num2; // Integer division: 0
int mod = num1 % num2;        // Modulus (remainder): 10

print("Sum: $sum, Sub: $sub, Mul: $mul");
print("Div: $div, Absolute: $absoluteDiv, Mod: $mod");
```

#### 🔗 Relational Operators
Compare two values and return true/false

```dart
int a = 10;
int b = 20;

print("a > b: ${a > b}");      // false
print("a < b: ${a < b}");      // true
print("a == b: ${a == b}");    // false
print("a != b: ${a != b}");    // true
print("a >= b: ${a >= b}");    // false
print("a <= b: ${a <= b}");    // true
```

#### 🧠 Logical Operators
Combine boolean values

```dart
bool x = true;
bool y = false;

print("x && y: ${x && y}");    // AND: false
print("x || y: ${x || y}");    // OR: true
print("!x: ${!x}");            // NOT: false
print("!y: ${!y}");            // NOT: true
```

#### 🔍 Type Test Operators
Check the type of a variable

```dart
int num = 10;
String str = "Hello";
dynamic anything = 20;

print(num is String);          // false
print(anything is int);        // true
```

#### 📝 Assignment Operators
Assign and modify values

```dart
int value = 10;
print("Initial value: $value");

value += 5;  // value = value + 5
print("After +=: $value");     // 15

value -= 3;  // value = value - 3
print("After -=: $value");     // 12

value *= 2;  // value = value * 2
print("After *=: $value");     // 24

value ~/= 4; // value = value ~/ 4
print("After ~/=: $value");    // 6
```

#### ❓ Conditional Operators
Make decisions in a single line

```dart
// Ternary operator: condition ? value_if_true : value_if_false
int number = 10;
String result = (number % 2 == 0) ? "Even" : "Odd";
print("The number is: $result");

// Nested ternary
String result2 = (number > 0)
    ? "$number is positive"
    : number < 0
    ? "$number is negative"
    : "Zero";
print(result2);
```

---

## 3. 📦 Collections - Storing Multiple Values

### 🤔 What Are Collections?

**Collections** are data structures that can store multiple values in a single variable. Think of them as containers that can hold many items.

### 📋 List - Ordered Collection

Lists store multiple values in order and allow duplicates.

```dart
// Creating and manipulating lists
List<String> studentNames = ['Baraa', 'Ahmad', 'Mohammad'];
List<int> grades = [85, 92, 78, 95];

// Accessing elements
print(studentNames[0]);        // Baraa
print(studentNames.length);    // 3

// Adding elements
studentNames.add('Ali');       // Add to end
studentNames.insert(1, 'Omar'); // Insert at index 1
print(studentNames);           // [Baraa, Omar, Ahmad, Mohammad, Ali]

// Removing elements
studentNames.remove('Ahmad');   // Remove by value
print(studentNames);           // [Baraa, Omar, Mohammad, Ali]
```

### 🏷️ Set - Unique Collection

Sets store unique values (no duplicates) and don't maintain order.

```dart
// Creating sets
Set<String> uniqueNames = {'Baraa', 'Ahmad', 'Mohammad', 'Ahmad'};
print(uniqueNames);            // {Baraa, Ahmad, Mohammad} - no duplicate

// Adding elements
uniqueNames.add('Ali');        // Adds successfully
uniqueNames.add('Ali');        // No effect - already exists
print(uniqueNames);            // {Baraa, Ahmad, Mohammad, Ali}
```

### 🗺️ Map - Key-Value Pairs

Maps store data as key-value pairs, like a dictionary.

```dart
// Creating maps
Map<String, String> studentInfo = {
  'name1': 'Baraa',
  'name2': 'Ahmad',
  'name3': 'Mohammad',
};

Map<String, int> grades = {
  'math': 85,
  'science': 92,
  'english': 78,
};

// Accessing values
print(studentInfo['name1']);   // Baraa
print(grades['math']);         // 85

// Adding new key-value pairs
studentInfo['name4'] = 'Ali';
grades['history'] = 88;
```

---

## 4. ⏰ Late Keyword - Delayed Initialization

### 🤔 What Is the Late Keyword?

The **late** keyword tells Dart that a variable will be assigned a value later, but before it's used. It's useful for variables that can't be initialized immediately.

### 🔑 Key Concepts

- **`late`**: Promise to initialize before use
- **`late final`**: Can only be set once
- **Null Safety**: Helps avoid null-related errors
- **Lazy Initialization**: Value calculated only when first accessed

### 💻 Code Example

```dart
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
  // name = "Ali"; // Error! Can't reassign late final
  print("Name: $name\n");

  // Example 3: Late variable that depends on other data
  late String greeting;
  String userName = "Developer";
  greeting = "Welcome, $userName!";
  print("Greeting: $greeting");
}
```

### ✅ When to Use Late

1. **Variables that will be set before they are used**
2. **Variables that depend on other data**
3. **Expensive calculations you want to delay**
4. **Breaking circular dependencies**

---

## 5. 🛡️ Null Safety - Avoiding Null Errors

### 🤔 What Is Null Safety?

**Null safety** helps avoid null errors by making types non-nullable by default. It ensures variables have values before they're used.

### 🔑 Key Operators

- **`?`**: Declare a variable that can be null
- **`!`**: Assert that a variable is not null
- **`??`**: Provide a default value if null
- **`??=`**: Assign a value only if the variable is null
- **`?.`**: Safe navigation operator

### 💻 Code Example

```dart
void main() {
  // Nullable variable
  int? nullableNumber;
  print(nullableNumber);        // prints: null

  // Null coalescing operator (??)
  nullableNumber = nullableNumber ?? 1; // If null, assign 1
  print(nullableNumber);        // prints: 1

  // Safe navigation operator (?.)
  int? anotherNumber;
  print(anotherNumber?.toDouble()); // prints: null (no error)

  // Null-aware assignment (??=)
  String? name;
  name ??= "Default Name";      // Assign only if null
  print(name);                  // prints: Default Name

  name ??= "New Name";          // Won't assign (already has value)
  print(name);                  // prints: Default Name
}
```

---

## 6. 🔀 Conditionals - Making Decisions

### 🤔 What Are Conditionals?

**Conditionals** allow your program to make decisions based on different conditions. They're like asking questions and doing different things based on the answers.

### 🎯 If-Else Statements

```dart
void main() {
  // Basic if-else
  int passGrade = 50;
  int studentGrade = 70;
  bool didPass = studentGrade >= passGrade;

  if (didPass) {
    print('Congratulations! You have passed :)');
  } else {
    print('Sorry, you failed :(');
  }

  // If-else if-else chain
  bool isAdmin = false;
  bool isModerator = false;

  if (isAdmin) {
    print('You are an Admin');
  } else if (isModerator) {
    print('You are a Moderator');
  } else {
    print('You are a Member');
  }
}
```

### 🤝 Logical Operators in Conditions

```dart
// AND operator (&&) - both conditions must be true
int mathScore = 80;
int englishScore = 70;
bool hasPassed = mathScore >= 50 && englishScore >= 50;

if (hasPassed) {
  print('You have passed in both subjects');
} else {
  print('You have failed in one or both subjects');
}

// OR operator (||) - at least one condition must be true
bool isAdmin = false;
bool isModerator = true;

if (isAdmin || isModerator) {
  print('You have admin or moderator access');
}
```

### 🔀 Switch Statements

```dart
int day = 3;
switch (day) {
  case 1:
    print('Monday');
    break;
  case 2:
    print('Tuesday');
    break;
  case 3:
    print('Wednesday');
    break;
  case 4:
    print('Thursday');
    break;
  case 5:
    print('Friday');
    break;
  case 6:
    print('Saturday');
    break;
  case 7:
    print('Sunday');
    break;
  default:
    print('Invalid day');
}
```

---

## 7. 🔄 Loops - Repeating Actions

### 🤔 What Are Loops?

**Loops** allow you to repeat code multiple times without writing it over and over. They're essential for processing collections and repetitive tasks.

### 🔢 For Loop

```dart
List<String> names = ['Baraa', 'Ali', 'Mohammed', 'Omar'];

// Traditional for loop
for (int i = 0; i < names.length; i++) {
  print('${i + 1}. ${names[i]}');
}
```

### 🔄 While Loop

```dart
// While loop - check condition before each iteration
bool isRunning = true;
int count = 0;

while (isRunning && count < 3) {
  print('Rendering... $count');
  count++;
  if (count >= 3) isRunning = false;
}
```

### 🔁 Do-While Loop

```dart
// Do-while loop - execute at least once, then check condition
bool isRunning2 = false;
do {
  print('This will run at least once');
} while (isRunning2);
```

### 📋 For-In Loop

```dart
List<String> names = ['Baraa', 'Ali', 'Mohammed'];

// For-in loop - iterate through collection directly
for (String name in names) {
  print('Hello, $name!');
}
```

### 🚫 Continue and Break

```dart
// Continue and break statements
for (int i = 0; i < 10; i++) {
  if (i == 2) {
    continue; // Skip iteration when i is 2
  }
  if (i == 5) {
    break; // Exit loop when i is 5
  }
  print('Number: $i');
}
// Output: 0, 1, 3, 4
```

---

## 8. 🔧 Functions - Reusable Code Blocks

### 🤔 What Are Functions?

**Functions** are reusable blocks of code that perform specific tasks. They help organize code, avoid repetition, and make programs more modular.

### 🎭 Basic Functions

```dart
// Void function (no return value)
void printStatus() {
  print('Happy');
}

// Function call
void main() {
  printStatus(); // Output: Happy
}
```

### 🔄 Functions with Return Values

```dart
// Function that returns a value
int twoNumbersSum(int num1, int num2) {
  int result = num1 + num2;
  return result;
}

void main() {
  int answer = twoNumbersSum(10, 20);
  print('Sum: $answer'); // Sum: 30
}
```

### 🏷️ Named Parameters

```dart
// Function with named parameters
double calcFinalPrice({required double price, double discount = 0.0}) {
  double finalPrice = price - (price * discount) / 100;
  return finalPrice;
}

void main() {
  print(calcFinalPrice(price: 100, discount: 10)); // 90.0
  print(calcFinalPrice(price: 100)); // 100.0 (default discount)
}
```

### ⚡ Arrow Functions (Single Line)

```dart
// Single line function using arrow syntax
void printHappy() => print('Happy');
int multiply(int a, int b) => a * b;
String greet(String name) => 'Hello, $name!';

void main() {
  printHappy(); // Happy
  print(multiply(5, 3)); // 15
  print(greet('Baraa')); // Hello, Baraa!
}
```

---

## 9. 💬 Input & Output - User Interaction

### 🤔 What Is Input & Output?

**Input** is data that comes into your program (like user typing), and **Output** is data that goes out (like printing to screen). This allows programs to interact with users.

### 💻 Code Example

```dart
import 'dart:io';

void main() {
  // Getting string input
  stdout.write("Enter your name: ");
  String? name = stdin.readLineSync();
  print("Your name is: $name");

  // Getting integer input
  stdout.write("Enter your age: ");
  int? age = int.parse(stdin.readLineSync() ?? '');
  print("Your age is: $age");

  // Getting double input
  stdout.write("Enter your GPA: ");
  double? gpa = double.parse(stdin.readLineSync() ?? '0.0');
  print("Your GPA is: $gpa");
}
```

---

## 10. 🚨 Error Handling - Try & Catch

### 🤔 What Is Error Handling?

**Error handling** helps your program deal with unexpected situations gracefully instead of crashing. It's like having a safety net for your code.

### 💻 Basic Try-Catch

```dart
void main() {
  List<String> names = ["Baraa"];
  
  try {
    // Attempt to access an index that doesn't exist
    print(names[1]); // This will throw an exception
  } catch (e) {
    // Handle the exception gracefully
    print("Caught an exception: $e");
  }
  
  print("Program continues running...");
}
```

### 🛡️ Try-Catch-Finally

```dart
void readFile(String filename) {
  try {
    // Simulate file reading
    if (filename.isEmpty) {
      throw Exception("Filename cannot be empty");
    }
    print("Reading file: $filename");
    print("File read successfully");
  } catch (e) {
    print("Error reading file: $e");
  } finally {
    // This always executes
    print("Cleaning up resources...");
  }
}
```

---

# Part II: Object-Oriented Programming

## 11. 📦 Classes - The OOP Foundation

### 🤔 What Are Classes and Objects?

**Classes** are blueprints or templates for creating objects. Think of a **class** as a cookie cutter and **objects** as the actual cookies made from that cutter.

- **Class**: Blueprint/template (like a house plan)
- **Object**: Actual thing created from blueprint (like the actual house)
- **Properties**: Data the object holds (like color, size)
- **Methods**: Actions the object can perform (like move, speak)

### 🔑 Key Concepts
- **Object Class**: In Dart, every class automatically extends `Object`
- **Properties**: Variables that belong to the class
- **Methods**: Functions that belong to the class
- **Constructor**: Special method that creates and initializes objects

### 💻 Code Example

```dart
class Person {
  // Properties (variables that belong to the class)
  String name;
  int age;

  // Constructor (creates new objects)
  Person(this.name, this.age);

  // Method (function that belongs to the class)
  void introduce() {
    print("Hi, I'm $name and I'm $age years old");
  }
}

void main() {
  // Creating objects from the class
  Person person1 = Person("Alice", 25);
  Person person2 = Person("Bob", 30);

  // Using the objects
  person1.introduce();
  person2.introduce();

  // Accessing properties
  print("${person1.name} is ${person1.age} years old");
}
```

---

## 12. 🏗️ Constructors - Object Creation

### 🤔 What Are Constructors?

**Constructors** are special methods that create and initialize objects. They run automatically when an object is created.

### 🔧 Constructor Types

- **Basic Constructor**: `ClassName(parameters)`
- **Named Constructor**: `ClassName.name(parameters)`
- **Named Parameters**: `{required param1, param2 = default}`

### 🔑 Parameter Types
- **`()`**: Required by default
- **`[]`**: Optional parameters
- **`{}`**: Named optional/required parameters

### 💻 Code Example

```dart
class Book {
  String title;
  String author;
  int pages;

  // Basic constructor
  Book(this.title, this.author, this.pages);

  // Named constructor for short books
  Book.short(this.title, this.author) : pages = 100;

  // Named constructor for long books
  Book.long(this.title, this.author) : pages = 500;

  void info() {
    print("'$title' by $author ($pages pages)");
  }
}

class Phone {
  String brand;
  String model;
  double price;

  // Constructor with named parameters
  Phone({required this.brand, required this.model, this.price = 0.0});

  void specs() {
    print("$brand $model - \$${price}");
  }
}

void main() {
  // Basic constructor
  Book book1 = Book("1984", "George Orwell", 328);
  
  // Named constructors
  Book book2 = Book.short("Quick Read", "Fast Author");
  Book book3 = Book.long("Epic Novel", "Detailed Writer");
  
  // Named parameters
  Phone phone1 = Phone(brand: "Apple", model: "iPhone", price: 999.99);
  Phone phone2 = Phone(brand: "Samsung", model: "Galaxy"); // price defaults to 0
}
```

---

## 13. 🔒 Private Variables & Getters/Setters

### 🤔 What Is Encapsulation?

**Encapsulation** is the practice of keeping some data hidden and controlling access to it. It's like having locks on your house - you control who can enter.

### 🔑 Key Concepts

- **Private Variables**: Start with underscore `_`, only accessible within the same class
- **Public Variables**: Normal variables, accessible from anywhere
- **Getter**: Method that safely retrieves private variable values (`get`)
- **Setter**: Method that safely modifies private variable values (`set`)

### ✅ Benefits
- Data protection from unauthorized access
- Data validation before setting values
- Computed properties (calculate values on demand)
- Better code organization and security

### 💻 Code Example

```dart
class BankAccount {
  String owner;
  double _balance; // Private - starts with _

  BankAccount(this.owner, this._balance);

  // GETTER - safe way to read private balance
  double get balance => _balance;

  // SETTER - safe way to modify balance with validation
  set balance(double newBalance) {
    if (newBalance >= 0) {
      _balance = newBalance;
    } else {
      print("Balance cannot be negative!");
    }
  }

  // GETTER - calculated property showing account status
  String get status {
    if (_balance >= 10000) return "VIP Account";
    if (_balance >= 1000) return "Premium Account";
    if (_balance >= 100) return "Standard Account";
    return "Basic Account";
  }
}

void main() {
  BankAccount account = BankAccount("Alice", 1000.0);
  
  // Using getters and setters
  print("Owner: ${account.owner}");
  print("Balance: \$${account.balance}"); // Using getter
  print("Status: ${account.status}"); // Using computed getter

  account.balance = 1500.0; // Using setter
  print("New balance: \$${account.balance}");
  
  account.balance = -100.0; // This will fail safely
  print("After invalid set: \$${account.balance}");
}
```

---

## 14. 👨‍👩‍👧‍👦 Inheritance - Code Reuse

### 🤔 What Is Inheritance?

**Inheritance** is a way to create a new class based on an existing class. Like a child inheriting traits from their parents, child classes get all the parent's properties and methods.

### 🔑 Key Concepts

- **Parent Class (Base/Super)**: The original class that others inherit from
- **Child Class (Derived/Sub)**: A class that inherits from a parent class
- **`extends`**: Keyword used to inherit from another class
- **`super`**: Keyword to access the parent class's methods or constructor
- **IS-A Relationship**: Car IS-A Vehicle

### 💻 Code Example

```dart
// Parent class (base class)
class Vehicle {
  String brand;
  int year;

  Vehicle(this.brand, this.year);

  void start() {
    print("$brand vehicle is starting...");
  }

  void stop() {
    print("$brand vehicle has stopped.");
  }

  void info() {
    print("$brand ($year)");
  }
}

// Child class (derived class)
class Car extends Vehicle {
  int doors;

  // Constructor that calls parent constructor
  Car(super.brand, super.year, this.doors);

  // Car-specific method
  void honk() {
    print("$brand car: Beep beep!");
  }
}

class Motorcycle extends Vehicle {
  bool hasSidecar;

  Motorcycle(super.brand, super.year, this.hasSidecar);

  void wheelie() {
    print("$brand motorcycle doing a wheelie!");
  }
}

void main() {
  Car car = Car("Toyota", 2022, 4);
  car.info();    // ✅ Inherited from Vehicle
  car.start();   // ✅ Inherited from Vehicle
  car.honk();    // ✅ Car's own method
  car.stop();    // ✅ Inherited from Vehicle

  Motorcycle bike = Motorcycle("Harley", 2021, false);
  bike.info();     // ✅ Inherited from Vehicle
  bike.wheelie();  // ✅ Motorcycle's own method
}
```

---

## 15. 🔄 Method Overriding - Customizing Behavior

### 🤔 What Is Method Overriding?

**Method Overriding** is changing the behavior of an inherited method in a child class. Same method name, but different implementation - like children doing things differently than their parents.

### 🔑 Key Concepts

- **`@override`**: Annotation that tells Dart you're intentionally changing a parent method
- **Same Signature**: Must have same method name and parameters as parent
- **Child's Version Called**: Child's implementation replaces parent's
- **`super.methodName()`**: Can still call parent's version if needed

### 💻 Code Example

```dart
class Animal {
  String name;

  Animal(this.name);

  // This method will be overridden by children
  void makeSound() {
    print("$name makes a generic animal sound");
  }

  // This method will be inherited as-is
  void sleep() {
    print("$name is sleeping");
  }
}

class Dog extends Animal {
  Dog(super.name);

  // Override the parent's makeSound method
  @override
  void makeSound() {
    print("$name barks: Woof woof!");
  }
}

class Cat extends Animal {
  Cat(super.name);

  // Override the parent's makeSound method differently
  @override
  void makeSound() {
    print("$name meows: Meow meow!");
  }
}

void main() {
  Animal genericAnimal = Animal("Unknown");
  Dog dog = Dog("Buddy");
  Cat cat = Cat("Whiskers");

  // Same method call, different behavior
  genericAnimal.makeSound(); // Generic sound
  dog.makeSound();          // Dog-specific sound
  cat.makeSound();          // Cat-specific sound

  // Some inherited, some overridden
  dog.sleep();  // Inherited from Animal
}
```

---

## 16. 📋 Abstract Classes - Templates & Contracts

### 🤔 What Are Abstract Classes?

**Abstract classes** are classes that cannot be used to create objects directly. They're like blueprints or templates that other classes must follow, ensuring all children implement required methods.

### 🔑 Key Concepts

- **`abstract class`**: Cannot create objects directly from this class
- **Abstract Methods**: Methods declared without implementation (no body)
- **Concrete Methods**: Methods WITH implementation that children inherit
- **Template Pattern**: Define structure that children must follow

### 💻 Code Example

```dart
// Abstract class - cannot create objects from this
abstract class Shape {
  String color;

  Shape(this.color);

  // Abstract method - no implementation, children MUST implement this
  double calculateArea();

  // Concrete method - has implementation, children can use as-is
  void displayColor() {
    print("This shape is $color");
  }
}

// Child class MUST implement all abstract methods
class Circle extends Shape {
  double radius;

  Circle(super.color, this.radius);

  // MUST implement this abstract method
  @override
  double calculateArea() {
    return 3.14159 * radius * radius;
  }
}

class Rectangle extends Shape {
  double width;
  double height;

  Rectangle(super.color, this.width, this.height);

  // MUST implement this abstract method
  @override
  double calculateArea() {
    return width * height;
  }
}

void main() {
  // ❌ This would cause an ERROR:
  // Shape shape = Shape("red"); // Cannot create objects from abstract class!

  Circle circle = Circle("Red", 5.0);
  Rectangle rectangle = Rectangle("Blue", 4.0, 6.0);

  // Using inherited concrete method
  circle.displayColor();
  rectangle.displayColor();

  // Using implemented abstract method
  print("Circle area: ${circle.calculateArea()}");
  print("Rectangle area: ${rectangle.calculateArea()}");
}
```

---

## 17. 📝 Implements - Pure Contracts

### 🤔 What Is Implements?

**Implements** makes a class follow a contract without inheritance. You get NO code from the parent - must implement everything yourself. It's like signing a contract that says "I promise to have these methods."

### 🆚 Extends vs Implements

| **Extends** | **Implements** |
|-------------|----------------|
| Inherit code and behavior | No inherited code, just method signatures |
| IS-A relationship | CAN-DO relationship |
| Only one parent class | Multiple interfaces allowed |
| Override only if you want to change | Must implement EVERYTHING yourself |

### 💻 Code Example

```dart
// Interface (contract) - what flyable things must have
abstract class Flyable {
  void fly();
  void land();
}

// Another interface
abstract class Swimmable {
  void swim();
}

// Using IMPLEMENTS - gets NO code, just the contract
class Bird implements Flyable {
  String name;

  Bird(this.name);

  // MUST implement ALL methods from Flyable
  @override
  void fly() {
    print("$name flaps wings and flies!");
  }

  @override
  void land() {
    print("$name lands on a branch");
  }
}

// Class that implements MULTIPLE interfaces
class Duck implements Flyable, Swimmable {
  String name;

  Duck(this.name);

  // Must implement ALL methods from Flyable
  @override
  void fly() {
    print("$name flies with webbed feet tucked in");
  }

  @override
  void land() {
    print("$name lands on water");
  }

  // Must implement ALL methods from Swimmable
  @override
  void swim() {
    print("$name paddles with webbed feet");
  }
}

void main() {
  Bird eagle = Bird("Eagle");
  eagle.fly();   // Must implement
  eagle.land();  // Must implement

  Duck duck = Duck("Donald");
  duck.fly();    // Must implement
  duck.land();   // Must implement
  duck.swim();   // Must implement
}
```

---

## 18. 🎭 Polymorphism - Many Forms

### 🤔 What Is Polymorphism?

**Polymorphism** is a Greek word meaning "many forms." It's when one method name has many different implementations. Like pressing "play" on different devices - TV, radio, phone - each plays differently, but you use the same "play" button.

### 🔑 Key Concepts

- **One Interface, Many Forms**: Same method name, different implementations
- **Runtime Resolution**: Program decides which method to call while running
- **Dynamic Binding**: Correct method chosen automatically based on actual object type
- **Parent Reference**: Parent reference can hold child objects

### 💻 Code Example

```dart
// Parent class
class Instrument {
  String name;

  Instrument(this.name);

  // This method will be overridden differently by each child
  void play() {
    print("$name makes music");
  }
}

// Different instruments, different sounds
class Piano extends Instrument {
  Piano() : super("Piano");

  @override
  void play() {
    print("Piano plays: ♪ Ding ding ding ♪");
  }
}

class Guitar extends Instrument {
  Guitar() : super("Guitar");

  @override
  void play() {
    print("Guitar plays: ♪ Strum strum strum ♪");
  }
}

class Drums extends Instrument {
  Drums() : super("Drums");

  @override
  void play() {
    print("Drums play: ♪ Bang bang bang ♪");
  }
}

void main() {
  // Individual instruments
  Piano piano = Piano();
  Guitar guitar = Guitar();
  Drums drums = Drums();

  piano.play();
  guitar.play();
  drums.play();

  // 🎯 POLYMORPHISM: Different objects, same interface!
  List<Instrument> orchestra = [Piano(), Guitar(), Drums(), Piano(), Guitar()];

  // Same method call for all, but each behaves differently!
  for (int i = 0; i < orchestra.length; i++) {
    Instrument instrument = orchestra[i];
    print("Instrument ${i + 1}: ${instrument.runtimeType}");
    instrument.play(); // Different behavior for each type!
  }

  // Runtime type detection
  Instrument mystery = Guitar(); // Instrument reference, Guitar object
  print("Mystery instrument type: ${mystery.runtimeType}");
  mystery.play(); // Calls Guitar's play() method automatically!
}
```

### 🌟 Real-World Example
Think of a remote control with a "play" button. Whether you point it at a TV, DVD player, or music system, pressing "play" does the right thing for each device. That's polymorphism!

---

## 19. 🧩 Mixins - Flexible Code Sharing

### 🤔 What Are Mixins?

**Mixins** are a way to share code between classes without inheritance. Like adding extra abilities to a class - "mix in" new features. It's more flexible than inheritance because you can pick and choose abilities.

### 🔑 Key Concepts

- **`mixin`**: Reusable code that can be mixed into classes
- **`with`**: Keyword to add mixin abilities to a class
- **Multiple Mixins**: Can use multiple mixins: `with Mixin1, Mixin2`
- **Last Wins**: If 2 mixins have the same method, the last one wins

### 💻 Code Example

```dart
// Base animal class - just the basics that ALL animals have
class Animal {
  String name;

  Animal(this.name);

  void eat() {
    print("$name is eating...");
  }

  void sleep() {
    print("$name is sleeping...");
  }
}

// Mixin for animals that can walk
mixin CanWalkMixin {
  void walk() {
    print("Walking on legs... step, step, step!");
  }
}

// Mixin for animals that crawl
mixin CanCrawlMixin {
  void crawl() {
    print("Crawling on belly... slither, slither!");
  }
}

// Mixin for animals that can swim
mixin CanSwimMixin {
  void swim() {
    print("Swimming... splash, splash!");
  }
}

// Dog can walk and swim
class Dog extends Animal with CanWalkMixin, CanSwimMixin {
  Dog(super.name);

  void bark() {
    print("$name says: Woof! Woof!");
  }
}

// Snake can only crawl (no legs!)
class Snake extends Animal with CanCrawlMixin {
  Snake(super.name);

  void hiss() {
    print("$name says: Hissss!");
  }
}

void main() {
  Dog buddy = Dog("Buddy");
  Snake slither = Snake("Slither");

  // What ALL Animals Can Do
  buddy.eat();
  slither.sleep();

  // Dog Abilities (Walk + Swim)
  buddy.bark();
  buddy.walk(); // From CanWalkMixin
  buddy.swim(); // From CanSwimMixin

  // Snake Abilities (Only Crawl)
  slither.hiss();
  slither.crawl(); // From CanCrawlMixin
  // slither.walk(); // ERROR! Snake doesn't have CanWalkMixin
}
```

### 🌟 Real World Comparison
- **Inheritance**: "A house IS A building"
- **Mixin**: "A house WITH electricity, WITH plumbing"
- You can mix and match features exactly as needed!

---

## 20. 👻 Anonymous Objects - Use and Forget

### 🤔 What Are Anonymous Objects?

**Anonymous objects** are objects created without storing them in a variable. Like using something once and throwing it away immediately - you create it, use it, and it's gone. No name needed!

### 🔑 Key Concepts

- **Anonymous**: No variable name needed
- **Temporary Use**: Perfect for one-time operations
- **Cleaner Code**: Creates more readable code
- **Immediate Garbage Collection**: Object is destroyed immediately after use

### 💻 Code Example

```dart
class Calculator {
  int value;

  Calculator(this.value);

  int add(int number) {
    return value + number;
  }

  int multiply(int number) {
    return value * number;
  }

  void display() {
    print("Calculator value: $value");
  }
}

void main() {
  // Normal Objects (With Variables)
  Calculator calc = Calculator(10);
  calc.display();
  print("10 + 5 = ${calc.add(5)}");

  // Anonymous Objects (No Variables)
  // Create, use, and forget immediately!
  Calculator(20).display(); // Create → Use → Gone
  print("20 x 3 = ${Calculator(20).multiply(3)}"); // Create → Use → Gone
}
```

### 🌟 Real World Comparison
- **Normal Object**: Buying a calculator and keeping it
- **Anonymous Object**: Using store's calculator and leaving
- You don't need to own everything you use!

---

## 21. 📊 Enums - Named Constants

### 🤔 What Are Enums?

**Enums** represent a fixed set of named constants. Like a dropdown menu with predefined choices. Short for "enumeration" - counting through a list of options.

### 🔑 Key Concepts

- **Named Constants**: Predefined values that have meaningful names
- **Fixed Set**: You can only use the values defined in the enum
- **Type Safety**: Prevents invalid values and typos
- **Readable Code**: Like having "RED", "GREEN", "BLUE" instead of numbers 1, 2, 3

### 💻 Code Example

```dart
// Simple enum for traffic light colors
enum TrafficLight { red, yellow, green }

// Simple enum for game levels
enum Level { easy, medium, hard }

// Simple function using traffic light enum
String getTrafficAction(TrafficLight light) {
  switch (light) {
    case TrafficLight.red:
      return "Stop! 🛑";
    case TrafficLight.yellow:
      return "Slow down! ⚠️";
    case TrafficLight.green:
      return "Go! ✅"; 
  }
}

// Simple function using level enum
int getPoints(Level gameLevel) {
  switch (gameLevel) {
    case Level.easy:
      return 10;
    case Level.medium:
      return 20;
    case Level.hard:
      return 50;
  }
}

void main() {
  // Traffic Light Example
  TrafficLight currentLight = TrafficLight.red;
  
  print("Light is: ${currentLight.name}");
  print("Action: ${getTrafficAction(currentLight)}");

  currentLight = TrafficLight.green;
  print("Light is: ${currentLight.name}");
  print("Action: ${getTrafficAction(currentLight)}");

  // Game Level Example
  Level playerLevel = Level.easy;
  print("Current level: ${playerLevel.name}");
  print("Points earned: ${getPoints(playerLevel)}");

  // All Traffic Light Colors
  for (TrafficLight light in TrafficLight.values) {
    print("${light.name}: ${getTrafficAction(light)}");
  }

  // All Game Levels
  for (Level level in Level.values) {
    print("${level.name}: ${getPoints(level)} points");
  }
}
```

### ✅ Key Syntax
- **Declaration**: `enum EnumName { value1, value2, value3 }`
- **Access**: `EnumName.valueName`
- **Get name**: `enumValue.name`
- **All values**: `EnumName.values`

---

## 🎯 Complete Summary & Key Takeaways

### 📚 What We've Learned

#### Part I: Fundamentals
1. **Data Types**: Foundation of storing different kinds of information
2. **Operators**: Tools for working with and manipulating data
3. **Collections**: Storing and organizing multiple values efficiently
4. **Late Keyword**: Delayed initialization for better null safety
5. **Null Safety**: Preventing null-related errors and crashes
6. **Conditionals**: Making decisions and controlling program flow
7. **Loops**: Repeating actions efficiently and processing collections
8. **Functions**: Creating reusable, organized, and modular code
9. **Input/Output**: Interacting with users and external data sources
10. **Error Handling**: Gracefully managing unexpected situations

#### Part II: Object-Oriented Programming
11. **Classes**: Blueprints for creating objects with properties and methods
12. **Constructors**: Special methods for creating and initializing objects
13. **Encapsulation**: Protecting data with private variables and getters/setters
14. **Inheritance**: Code reuse through parent-child relationships
15. **Method Overriding**: Customizing inherited behavior in child classes
16. **Abstract Classes**: Templates that force implementation of required methods
17. **Implements**: Contracts without code inheritance
18. **Polymorphism**: Same interface, different implementations
19. **Mixins**: Flexible code sharing without inheritance limitations
20. **Anonymous Objects**: One-time use objects without variables
21. **Enums**: Named constants for better code readability

### 🌟 Core Programming Principles

#### Fundamentals
- **Data Management**: Choosing the right types and structures
- **Control Flow**: Directing how your program executes
- **Code Organization**: Using functions to create clean, maintainable code
- **Error Prevention**: Writing defensive code that handles edge cases

#### Object-Oriented Programming
- **Encapsulation**: Hide data and control access
- **Inheritance**: Reuse code through parent-child relationships
- **Polymorphism**: Many forms, one interface
- **Abstraction**: Hide complexity, show only necessary details

### 🚀 Best Practices

1. **Use meaningful names** for classes, methods, and variables
2. **Choose appropriate data types** for your specific needs
3. **Handle null values** properly with null safety features
4. **Write functions** for code that you use more than once
5. **Use collections** efficiently for storing related data
6. **Always handle potential errors** with try-catch blocks
7. **Validate user input** before processing it
8. **Keep classes focused** on a single responsibility
9. **Prefer composition over inheritance** when possible
10. **Use enums** instead of magic numbers or strings
11. **Document your code** with clear comments
12. **Follow Dart naming conventions** (camelCase for variables, PascalCase for classes)

### 📖 Learning Path & Next Steps

#### **Beginner Path** (Start Here)
1. **Master Part I: Fundamentals** - Data types through error handling
2. **Build simple console applications** using fundamental concepts
3. **Practice with small projects** like calculators, grade managers
4. **Move to Part II: OOP** when comfortable with fundamentals

#### **Intermediate Path** 
1. **Complete both parts** of this guide
2. **Build more complex applications** combining all concepts
3. **Learn advanced Dart features** like generics and async programming
4. **Start exploring Flutter** for mobile app development

#### **Advanced Path**
1. **Master design patterns** and architectural principles
2. **Learn state management** for complex applications
3. **Explore web development** with Dart
4. **Contribute to open-source projects**

### 🎯 Practice Projects by Level

#### **Beginner Projects** (Fundamentals)
1. **Calculator App**: Practice functions, input/output, error handling
2. **Grade Manager**: Use collections, loops, conditionals
3. **Number Guessing Game**: Combine all fundamental concepts
4. **Simple To-Do List**: Practice with lists and user interaction

#### **Intermediate Projects** (OOP)
1. **Library Management System**: Classes, inheritance, encapsulation
2. **Banking Application**: Private variables, getters/setters, validation
3. **Animal Simulator**: Abstract classes, polymorphism, mixins
4. **Shape Drawing Program**: Interfaces, abstract classes, inheritance

#### **Advanced Projects** (Combined)
1. **Complete E-commerce System**: All concepts integrated
2. **Game Engine**: Advanced OOP patterns and performance
3. **Mobile App with Flutter**: Real-world application
4. **Web Application**: Full-stack development

### 🎉 Congratulations!

You now have a comprehensive understanding of Dart programming from basic fundamentals to advanced object-oriented concepts. This knowledge provides a solid foundation for:

- **Flutter Mobile Development**
- **Web Development with Dart**
- **Server-side Development**
- **Advanced Programming Concepts**
- **Software Architecture and Design**

Remember: **Programming mastery comes through consistent practice and building real projects!** Start with the fundamentals, build projects, and gradually work your way up to more complex applications. 🌟

### 📚 Additional Resources

- **Official Dart Documentation**: [dart.dev](https://dart.dev)
- **Flutter Documentation**: [flutter.dev](https://flutter.dev)
- **Dart Packages**: [pub.dev](https://pub.dev)
- **Practice Coding**: Build projects and experiment with code
- **Join Communities**: Engage with other Dart/Flutter developers

---

*This complete guide covers everything from Dart fundamentals to advanced object-oriented programming. Each concept builds upon previous ones, creating a comprehensive learning journey. Keep practicing, building projects, and exploring new challenges!*

---

*Made with ❤️ by Baraa Mabrok.*
