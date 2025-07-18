// =================================================================
// JUST POLYMORPHISM
// =================================================================

/*
 * WHAT IS POLYMORPHISM?
 
 * POLYMORPHISM: Greek word meaning "many forms"
 *               One method name, many different implementations
 *               Like pressing "play" on different devices - TV, radio, phone - each plays differently
 
 * RUNTIME RESOLUTION: The program decides which method to call while it's running
 *                     Like choosing the right "move" method when you don't know if it's a car or plane
 
 * SAME INTERFACE: All objects can be called the same way, even if they behave differently
 *                 Like all vehicles having a "start()" method, but cars and planes start differently
 
 * DYNAMIC BINDING: The correct method is chosen automatically based on the actual object type
 *                  Like the program knowing to call "Car.move()" even if stored as "Vehicle"
 
 & KEY CONCEPTS:
 * Same method name (play), different implementations in each class
 * Parent reference can hold child objects
 * Correct method chosen automatically at runtime
 * Makes code flexible - can add new instruments easily
 * One interface, many forms of behavior
 
 ^ WHY IT'S POWERFUL:
 * Write code once, works with many types
 * Easy to add new types without changing existing code
 * Runtime flexibility and extensibility
 */

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
  print("=== POLYMORPHISM EXAMPLE ===\n");

  print("--- Individual Instruments ---");
  Piano piano = Piano();
  Guitar guitar = Guitar();
  Drums drums = Drums();

  piano.play();
  guitar.play();
  drums.play();

  print("\n--- Polymorphism Magic! ---");
  print("Same method call, different results:\n");

  // 🎯 POLYMORPHISM: Different objects, same interface!
  List<Instrument> orchestra = [Piano(), Guitar(), Drums(), Piano(), Guitar()];

  // Same method call for all, but each behaves differently!
  for (int i = 0; i < orchestra.length; i++) {
    Instrument instrument = orchestra[i];
    print("Instrument ${i + 1}: ${instrument.runtimeType}");
    instrument.play(); // Different behavior for each type!
    print("");
  }

  print("--- Runtime Type Detection ---");
  Instrument mystery = Guitar(); // Instrument reference, Guitar object
  print("Mystery instrument type: ${mystery.runtimeType}");
  mystery.play(); // Calls Guitar's play() method automatically!
}
