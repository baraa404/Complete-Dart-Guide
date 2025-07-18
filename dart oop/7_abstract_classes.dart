// =================================================================
// JUST ABSTRACT CLASSES
// =================================================================

/*
 * 📖 WHAT ARE ABSTRACT CLASSES?
 
 * 📋 ABSTRACT CLASS: A class that cannot be used to create objects directly
 *                Like a blueprint or template that other classes must follow
 *                Uses the 'abstract' keyword before 'class'
 
 * 🚫 ABSTRACT METHOD: A method declared without implementation (no body)
 *                 Like saying "all animals must eat" but not specifying how
 *                 Child classes MUST implement these methods overrieden
 
 * ✅ CONCRETE METHOD: A method WITH implementation that all children can use
 *                 Like a method that works the same for all children
 *                 Children inherit and can use these as-is
 
 * 📝 TEMPLATE PATTERN: Abstract classes define the structure that children must follow
 *                  Like a job description - lists what must be done
 *                  Ensures consistency across related classes
 
 & 🔑 KEY CONCEPTS:
 * Cannot create objects from abstract classes directly
 * Forces child classes to implement required methods
 * Can have both abstract and concrete methods
 * Provides a common interface for related classes
 * Use when you want to enforce a contract
 
 ^ ✅ BENEFITS:
 * Ensures all child classes have required methods
 * Provides code reuse through concrete methods
 * Creates consistent interface across similar classes
 * Prevents creation of incomplete objects
 * Enforces design patterns and standards
 
 ! ❌ IMPORTANT RULES:
 * Must use 'abstract' keyword
 * Cannot instantiate abstract classes
 * Child classes must implement ALL abstract methods
 * Abstract methods have no body (no {})
 
 ~ 🌟 REAL WORLD EXAMPLES:
 * Shape (abstract) → Circle, Rectangle (concrete)
 * Vehicle (abstract) → Car, Bike (concrete)
 * Animal (abstract) → Dog, Cat (concrete)
 * Employee (abstract) → Manager, Developer (concrete)
 */

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
  print("=== ABSTRACT CLASS EXAMPLE ===\n");

  // ❌ This would cause an ERROR:
  // Shape shape = Shape("red"); // Cannot create objects from abstract class!

  print("--- Creating Objects from Child Classes ---");
  Circle circle = Circle("Red", 5.0);
  Rectangle rectangle = Rectangle("Blue", 4.0, 6.0);

  // Using inherited concrete method
  circle.displayColor();
  rectangle.displayColor();

  // Using implemented abstract method
  print("Circle area: ${circle.calculateArea()}");
  print("Rectangle area: ${rectangle.calculateArea()}");

  print("\n--- Why Use Abstract Classes? ---");
  print("Forces all shapes to have calculateArea() method");
  print("But lets each shape calculate it differently");
  print("Circle: π × r²");
  print("Rectangle: width × height");

  print("\n✅ Key Points:");
  print("• abstract class ClassName - cannot create objects");
  print("• Abstract methods have no implementation");
  print("• Children MUST implement all abstract methods");
  print("• Can mix abstract and concrete methods");
  print("• Good for creating templates/contracts");

  test7();
}

// =================================================================
// PRACTICE TASK
// =================================================================

/*
 * TASK: Create abstract class example
 * 
 * 1. Create an abstract "Animal" class with:
 *    - name (String) property
 *    - makeSound() abstract method (no implementation)
 *    - sleep() concrete method that prints "[name] is sleeping"
 * 
 * 2. Create a "Dog" class that extends Animal:
 *    - Implement makeSound() to print "[name] barks: Woof!"
 * 
 * 3. Test by creating a Dog object and calling both methods
 * 
 * This covers: abstract class, abstract method, concrete method, must implement
 */

abstract class Animal {
  String name;
  Animal(this.name);

// abstract method - no implementation, must be overridden
  void makesound();

  void sleep() {
    print('$name is sleeping');
  }
}

class Dog extends Animal {
  Dog(super.name);

// Implementing the abstract method
  @override
  void makesound() {
    print('$name barks: Woof!');
  }
}

void test7() {
  Dog d1 = Dog('jack');

  d1.makesound();
  d1.sleep();
}
