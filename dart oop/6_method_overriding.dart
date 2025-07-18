// =================================================================
// JUST METHOD OVERRIDING
// =================================================================

/*
 * 📖 WHAT IS METHOD OVERRIDING?
 
 * 🔄 METHOD OVERRIDING: Changing the behavior of an inherited method in a child class
 *                   Like children doing things differently than their parents
 *                   Same method name, but different implementation
 
 * 🏷️ @override: An annotation that tells Dart you're intentionally changing a parent method
 *           Like putting a label that says "I'm doing this differently"
 *           Helps catch typos and makes code clearer
 
 * 👪 INHERITED METHOD: A method that comes from the parent class
 *                  Like learning skills from your parents
 *                  Child classes get all parent methods automatically
 
 & 🔑 KEY CONCEPTS:
 * Child class can change how parent methods work
 * Same method name and parameters as parent
 * Use @override annotation for clarity and safety
 * Child's version is called instead of parent's version
 * Can still call parent's version using super.methodName()
 
 ^ ✅ BENEFITS:
 * Customize behavior for specific child classes
 * Keep same interface but change implementation
 * Polymorphism - same method call, different behavior
 * Code flexibility and specialization
 * Maintains consistency while allowing customization
 
 ! ⚠️ IMPORTANT RULES:
 * Must have same method signature as parent
 * Use @override for safety and clarity
 * Can call parent method with super.methodName()
 * Child's implementation completely replaces parent's
 
 ~ 🌟 REAL WORLD EXAMPLES:
 * Animals making different sounds (dog barks, cat meows)
 * Vehicles starting differently (car ignition, bike kick-start)
 * Shapes calculating area differently (circle vs rectangle)
 * Students studying differently (visual, auditory, hands-on)
 */

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

class Cow extends Animal {
  Cow(super.name);

  // Override the parent's makeSound method
  @override
  void makeSound() {
    print("$name moos: Moo moo!");
  }

  // Override sleep method too
  @override
  void sleep() {
    print("$name is sleeping standing up");
  }
}

void main() {
  print("=== METHOD OVERRIDING EXAMPLE ===\n");

  // Create different animals
  Animal genericAnimal = Animal("Unknown");
  Dog dog = Dog("Buddy");
  Cat cat = Cat("Whiskers");
  Cow cow = Cow("Bessie");

  print("--- Same Method, Different Behavior ---");
  genericAnimal.makeSound(); // Generic sound
  dog.makeSound(); // Dog-specific sound
  cat.makeSound(); // Cat-specific sound
  cow.makeSound(); // Cow-specific sound

  print("\n--- Inherited vs Overridden Methods ---");
  print("Sleep method (some inherited, some overridden):");
  dog.sleep(); // Inherited from Animal
  cat.sleep(); // Inherited from Animal
  cow.sleep(); // Overridden in Cow class

  print('test5 ');
  test5(); // Call the test function for Circle class
}

// =================================================================
// PRACTICE TASK
// =================================================================

/*
 * TASK: Create method overriding example
 * 
 * 1. Create a "Shape" class with:
 *    - name (String) property
 *    - getArea() method that returns 0.0 (for unknown shapes)
 * 
 * 2. Create a "Circle" class that extends Shape:
 *    - Add radius (double) property
 *    - Override getArea() to return pi * radius * radius (use 3.14 for pi)
 * 
 * 3. Test by creating both Shape and Circle objects, call getArea() and print the results
 * 
 * This covers: @override annotation, method overriding, different behavior
 */

class Shape {
  String name;
  Shape(this.name);

  double getArea() {
    return 0.0;
  }
}

class Circle extends Shape {
  double radius;

  Circle(super.name, this.radius);

  @override
  double getArea() {
    double pi = 3.14;

    return pi * radius * radius;
  }
}

void test5() {
  Shape sh1 = Shape("unkown");
  print("Shape area: ${sh1.getArea()}");

  Circle c1 = Circle("Circle", 3.2);
  print("Circle area: ${c1.getArea()}");
}
