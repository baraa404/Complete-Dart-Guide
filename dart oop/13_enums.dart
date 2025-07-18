// =================================================================
// JUST ENUMS
// =================================================================

/*
 * 📖 WHAT ARE ENUMS?
 
 * 📋 ENUM: A special type that represents a fixed set of named constants
 *         Like a dropdown menu with predefined choices
 *         Short for "enumeration" - counting through a list of options
 
 * 🏷️ NAMED CONSTANTS: Predefined values that have meaningful names
 *                    Like having "RED", "GREEN", "BLUE" instead of numbers 1, 2, 3
 *                    Makes code more readable and less error-prone
 
 * 🔒 FIXED SET: You can only use the values defined in the enum
 *              Like a multiple choice question - only certain answers allowed
 *              Prevents typos and invalid values
 
 * 🎯 USE CASES: Perfect for representing states, categories, or options
 *              Like days of the week, colors, directions, game states
 
 & 🔑 KEY CONCEPTS:
 * enum defines a fixed set of named values
 * Each value is called an "enum constant" or "enum value"
 * Values are accessed using EnumName.valueName syntax
 * Cannot create new instances of enums
 * Great for switch statements and comparisons
 * Makes code more readable and maintainable
 
 ^ ✅ BENEFITS:
 * Prevents invalid values (type safety)
 * Makes code more readable than magic numbers
 * IDE provides autocomplete for enum values
 * Easy to add new values without breaking existing code
 * Perfect for switch statements
 * Self-documenting code
 
 ! ❌ COMMON MISTAKES TO AVOID:
 * Don't use strings when enums would be better
 * Don't use magic numbers for categories
 * Remember enum values are constants (can't change)
 * Use proper naming conventions (UPPER_CASE or camelCase)
 
 ~ 🌟 REAL WORLD EXAMPLES:
 * Days of the week (MONDAY, TUESDAY, etc.)
 * Traffic light colors (RED, YELLOW, GREEN)
 * Player states in games (IDLE, RUNNING, JUMPING)
 * Order status (PENDING, SHIPPED, DELIVERED)
 * Difficulty levels (EASY, MEDIUM, HARD)
 */

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
  print("=== ENUMS EXAMPLE ===\n");

  print("--- Traffic Light Example ---");
  
  TrafficLight currentLight = TrafficLight.red;
  
  print("Light is: ${currentLight.name}");
  print("Action: ${getTrafficAction(currentLight)}");

  currentLight = TrafficLight.green;
  print("Light is: ${currentLight.name}");
  print("Action: ${getTrafficAction(currentLight)}");

  print("\n--- Game Level Example ---");
  Level playerLevel = Level.easy;
  print("Current level: ${playerLevel.name}");
  print("Points earned: ${getPoints(playerLevel)}");

  playerLevel = Level.hard;
  print("Current level: ${playerLevel.name}");
  print("Points earned: ${getPoints(playerLevel)}");

  print("\n--- All Traffic Light Colors ---");
  for (TrafficLight light in TrafficLight.values) {
    print("${light.name}: ${getTrafficAction(light)}");
  }

  print("\n--- All Game Levels ---");
  for (Level level in Level.values) {
    print("${level.name}: ${getPoints(level)} points");
  }

  print("\n✅ Enum Benefits Demonstrated:");
  print("• Type safety - can't use invalid values");
  print("• Readable code - ${TrafficLight.red.name} instead of 1");
  print("• Perfect for switch statements");
  print("• IDE autocomplete support");
  print("• Easy to iterate through all values");

  print("\n✅ Key Syntax:");
  print("• enum EnumName { value1, value2, value3 }");
  print("• Access: EnumName.valueName");
  print("• Get name: enumValue.name");
  print("• All values: EnumName.values");
}
