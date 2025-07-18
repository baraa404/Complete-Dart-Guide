// =================================================================
// JUST IMPLEMENTS
// =================================================================

/*
 * 📖 WHAT IS IMPLEMENTS?
 
 * 📋 IMPLEMENTS: A keyword that makes a class follow a contract without inheritance
 *            Like signing a contract that says "I promise to have these methods"
 *            You get NO code from the parent - must implement everything yourself
 
 * 📝 CONTRACT/INTERFACE: A set of method signatures that a class must have
 *                    Like a job description - lists what methods you must provide
 *                    Defines WHAT methods you need, not HOW to implement them
 
 * 🆚 EXTENDS vs IMPLEMENTS: Two different ways to relate classes
 *                       EXTENDS = inherit code and behavior (IS-A relationship)
 *                       IMPLEMENTS = follow a contract (CAN-DO relationship)
 

 *🆚  abstract vs implements:
 * abstract: Can have both abstract and concrete methods
 *          abstract methods must be implemented by children
 *          concrete methods can be used as-is
 * implements: Must implement ALL methods
 *           No inherited code, just method signatures
 *          Forces you to write everything yourself
 * 
 * 
 * 
 & 🔑 KEY CONCEPTS:
 * No inheritance of implementation, only method signatures
 * Must implement ALL methods from the interface class
 * Can implement multiple interfaces (unlike extends)
 * Creates "CAN-DO" relationship vs "IS-A" relationship
 * Forces consistent method names across different classes
 
 ^ ✅ BENEFITS:
 * Multiple interface implementation (flexibility)
 * Ensures consistent method signatures across classes
 * No unwanted inherited code
 * Clear contracts between classes
 * Better for unrelated classes that need similar capabilities
 
 ! ❌ IMPORTANT DIFFERENCES:
 * EXTENDS: Get parent's code → Override only if you want to change
 * IMPLEMENTS: Get nothing → Must implement EVERYTHING yourself
 * EXTENDS: Only one parent class
 * IMPLEMENTS: Multiple interfaces allowed
 
 ~ 🌟 REAL WORLD EXAMPLES:
 * Flyable interface → Bird, Airplane (different implementations)
 * Drawable interface → Circle, Square (same methods, different drawing)
 * Comparable interface → Student, Product (same comparison contract)
 * Readable interface → Book, Website (same reading contract)
 */

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

// For comparison: using EXTENDS (gets code for free)
class Animal {
  String name;
  Animal(this.name);

  void breathe() {
    print("$name is breathing");
  }
}

class Fish extends Animal {
  Fish(super.name);

  // Gets breathe() method for FREE from Animal

  void swim() {
    print("$name swims with fins");
  }
}

void main() {
  print("=== IMPLEMENTS EXAMPLE ===\n");

  print("--- Bird (implements Flyable) ---");
  Bird eagle = Bird("Eagle");
  eagle.fly(); // Must implement
  eagle.land(); // Must implement

  print("\n--- Duck (implements Flyable + Swimmable) ---");
  Duck duck = Duck("Donald");
  duck.fly(); // Must implement
  duck.land(); // Must implement
  duck.swim(); // Must implement

  print("\n--- Fish (extends Animal) ---");
  Fish goldfish = Fish("Goldie");
  goldfish.breathe(); // ✅ Gets for FREE from Animal
  goldfish.swim(); // Own method

  print("\n--- EXTENDS vs IMPLEMENTS ---");
  print("EXTENDS:");
  print("  • Gets ALL parent code for free");
  print("  • Can only extend ONE class");
  print("  • 'IS-A' relationship (Fish IS an Animal)");
  print("");
  print("IMPLEMENTS:");
  print("  • Gets NO code, must write everything");
  print("  • Can implement MULTIPLE interfaces");
  print("  • 'CAN-DO' relationship (Duck CAN fly AND swim)");

  print("\n✅ Key Points:");
  print("• implements = contract/interface only");
  print("• Must write ALL method implementations yourself");
  print("• Can implement multiple interfaces");
  print("• Use for 'CAN-DO' relationships");
}

// =================================================================
// PRACTICE TASK
// =================================================================

/*
 * TASK: Create implements example
 * 
 * 1. Create a "Drawable" interface with:
 *    - draw() method (abstract)
 * 
 * 2. Create a "Circle" class that implements Drawable:
 *    - Add radius property
 *    - Implement draw() to print "Drawing circle with radius [radius]"
 * 
 * 3. Test by creating a Circle object and calling draw()
 * 
=  */

abstract class Drawable {
  String name;
  Drawable(this.name);
  void draw();
}

/* 
we used abstract here to prevent creating usless objects since
implemnts will overide any method that is in the class
*/
class Circle implements Drawable {
  @override
  String name;
  double radius;

  Circle(this.radius, this.name);

  @override
  void draw() {
    print('drawing circle with radius $radius');
  }

  void test8() {
    Circle c1 = Circle(5.0, "Circle");
    c1.draw();
  }
}
