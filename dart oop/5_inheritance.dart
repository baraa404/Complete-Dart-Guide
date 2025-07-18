// =================================================================
// JUST INHERITANCE
// =================================================================

/*
 * WHAT IS INHERITANCE?
 
 * INHERITANCE: A way to create a new class based on an existing class
 *              Like a child inheriting traits from their parents
 *              Child class gets all the parent's properties and methods
 
 * PARENT CLASS (Base/Super): The original class that others inherit from
 *                            Like a general "Animal" that has basic traits
 
 * CHILD CLASS (Derived/Sub): A class that inherits from a parent class
 *                            Like a specific "Dog" that is a type of Animal
 
 * EXTENDS: The keyword used to inherit from another class
 *          Like saying "Dog extends Animal" = "Dog is a type of Animal"
 
 * SUPER: A keyword to access the parent class's methods or constructor
 *        Like calling your parent for help or advice
 
 & KEY CONCEPTS:
 * Child inherits ALL parent properties and methods
 * Child can add its own unique features
 * Child can override parent methods with new behavior
 * Creates "IS-A" relationship: Car IS-A Vehicle
 * Promotes code reuse and organization
 
 ~ REAL WORLD EXAMPLES:
 * Vehicle (parent) → Car, Motorcycle (children)
 * Animal (parent) → Dog, Cat, Bird (children)
 * Shape (parent) → Circle, Rectangle, Triangle (children)
 */

// Parent class (also called base class or superclass)

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

// Child class (also called derived class or subclass)
class Car extends Vehicle {
  int doors;

  // Constructor that calls parent constructor
  Car(super.brand, super.year, this.doors);

  // Car-specific method
  void honk() {
    print("$brand car: Beep beep!");
  }
}

// Another child class
class Motorcycle extends Vehicle {
  bool hasSidecar;

  Motorcycle(super.brand, super.year, this.hasSidecar);

  // Motorcycle-specific method
  void wheelie() {
    print("$brand motorcycle doing a wheelie!");
  }
}

void main() {
  print("=== INHERITANCE EXAMPLE ===\n");

  print("--- Parent Vehicle ---");
  Vehicle vehicle = Vehicle("Generic", 2020);
  vehicle.info();
  vehicle.start();
  vehicle.stop();

  print("\n--- Car (inherits from Vehicle) ---");
  Car car = Car("Toyota", 2022, 4);
  car.info(); // ✅ Inherited from Vehicle
  car.start(); // ✅ Inherited from Vehicle
  car.honk(); // ✅ Car's own method
  car.stop(); // ✅ Inherited from Vehicle
  print("Doors: ${car.doors}");

  print("\n--- Motorcycle (inherits from Vehicle) ---");
  Motorcycle bike = Motorcycle("Harley", 2021, false);
  bike.info(); // ✅ Inherited from Vehicle
  bike.start(); // ✅ Inherited from Vehicle
  bike.wheelie(); // ✅ Motorcycle's own method
  print("Has sidecar: ${bike.hasSidecar}");

  print("\n✅ What Child Classes Get:");
  print("• All parent properties (brand, year)");
  print("• All parent methods (start, stop, info)");
  print("• Can add their own properties (doors, hasSidecar)");
  print("• Can add their own methods (honk, wheelie)");

  print("\n✅ Key Syntax:");
  print("• class ChildClass extends ParentClass");
  print("• super.property or super() calls parent");

  print('task5 ');
  test5();
}


// =================================================================
// PRACTICE TASK
// =================================================================

/*
 * TASK: Create a simple inheritance hierarchy
 * 
 * 1. Create a "Person" class with:
 *    - name (String) and age (int) properties
 *    - introduce() method that prints "Hi, I'm [name], [age] years old"
 * 
 * 2. Create a "Student" class that extends Person:
 *    - Add school (String) property
 *    - Add study() method that prints "[name] is studying at [school]"
 * 
 * 3. Test by creating one Student object and calling both inherited and new methods
 * 
 * This covers: inheritance, extends keyword, super constructor, inherited methods
 */

class Person {
  String name;
  int age;
  Person(this.age, this.name);
  void introduce() {
    print("Hi I'm $name, $age years old");
  }

}
class Student extends Person{
  String school;
  Student(super.age,super.name,this.school);

  void study(){
    print("$name is studing at $school");
  }
}

void test5(){
Student st1 =Student(16, "ali", "misr");
st1.introduce();
st1.study();
}