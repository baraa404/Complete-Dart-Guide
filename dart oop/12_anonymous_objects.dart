// =================================================================
// JUST ANONYMOUS OBJECTS
// =================================================================

/*
 * WHAT ARE ANONYMOUS OBJECTS?
 
 * ANONYMOUS OBJECT: An object created without storing it in a variable
 *                   Like using something once and throwing it away immediately
 *                   You create it, use it, and it's gone - no name needed
 
 * TEMPORARY USE: Perfect for one-time operations where you don't need to keep the object
 *                Like borrowing a tool, using it once, and giving it back immediately
 
 & KEY CONCEPTS:
 * Anonymous = no variable name needed
 * Perfect for one-time use  
 * Creates cleaner, more readable code
 * Object is garbage collected immediately after use
 
 ^ WHEN TO USE:
 * One-time calculations
 * Quick validations
 * Temporary operations  
 * Method chaining
 
 ! WHEN NOT TO USE:
 * When you need the object multiple times
 * When you need to modify the object later
 
 ~ REAL WORLD COMPARISON:
 * Normal Object: Buying a calculator and keeping it
 * Anonymous Object: Using store's calculator and leaving
 * You don't need to own everything you use!
 */

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

class Printer {
  String message;

  Printer(this.message);

  void printMessage() {
    print("📄 $message");
  }

  void printWithBorder() {
    print("=" * (message.length + 4));
    print("| $message |");
    print("=" * (message.length + 4));
  }
}

class Validator {
  String text;

  Validator(this.text);

  bool isEmail() {
    return text.contains("@") && text.contains(".");
  }

  bool isLongEnough() {
    return text.length >= 8;
  }

  bool isEmpty() {
    return text.trim().isEmpty;
  }
}

void main() {
  print("=== ANONYMOUS OBJECTS EXAMPLE ===\n");

  print("--- Normal Objects (With Variables) ---");
  Calculator calc = Calculator(10);
  calc.display();
  print("10 + 5 = ${calc.add(5)}");

  print("\n--- Anonymous Objects (No Variables) ---");
  // Create, use, and forget immediately!
  Calculator(20).display(); // Create → Use → Gone
  print("20 x 3 = ${Calculator(20).multiply(3)}"); // Create → Use → Gone

  print("\n--- More Anonymous Object Examples ---");

  // Print messages without storing the printer
  Printer("Hello World!").printMessage();
  Printer("Important Notice").printWithBorder();

  // Validate data without keeping the validator
  print(
    "Is 'test@email.com' an email? ${Validator('test@email.com').isEmail()}",
  );
  print(
    "Is 'password123' long enough? ${Validator('password123').isLongEnough()}",
  );
  print("Is empty string empty? ${Validator('   ').isEmpty()}");

  print("\n--- Performance Note ---");
  print("Anonymous objects are created and destroyed quickly");
  print("They're perfect for 'use and forget' scenarios");
}
