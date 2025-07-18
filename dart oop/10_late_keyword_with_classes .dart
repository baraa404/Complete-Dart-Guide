// =================================================================
// JUST LATE KEYWORD
// =================================================================

/*
 * WHAT IS THE LATE KEYWORD?
 
 * LATE: A keyword that tells Dart "I promise to set this variable before using it"
 *       Like saying "I'll fill this box later, but I know I will before opening it"
 
 * LAZY INITIALIZATION: Setting a variable's value only when it's first accessed
 *                      Like cooking food only when someone orders it
 
 * NON-NULLABLE: Variables that cannot be null (must have a value)
 *               But with 'late', you can set the value after declaration
 
 & KEY CONCEPTS:
 * 'late' = promise to initialize before use
 * 'late final' = can only be set once
 * Lazy initialization = calculated when first accessed
 * Helps with performance and circular dependencies
 * Runtime error if accessed before initialization
 
 ^ COMMON USE CASES:
 * Variables that depend on constructor parameters
 * Expensive calculations you want to delay
 * Values that come from async operations
 * Breaking circular dependencies
 
 ! WITHOUT LATE vs WITH LATE:
 * Without 'late': must initialize immediately or make nullable
 * With 'late': can initialize later, but before first use
 */

class Person {
  String name;
  late String email; // Will be set later, but guaranteed before use

  // Late variable with lazy initialization
  late String displayName = _createDisplayName();

  Person(this.name);

  // This will only run when displayName is first accessed
  String _createDisplayName() {
    print("Creating display name..."); // You'll see this only once
    return "Mr/Ms. $name";
  }

  void setEmail(String newEmail) {
    email = newEmail; // Setting the late variable
  }
}

class DatabaseConnection {
  late String connectionString;
  late int _connectionId;

  // Late final - can only be set once
  late final String serverName;

  void connect(String server, int port) {
    serverName = server; // Can set once
    connectionString = "$server:$port";
    _connectionId = DateTime.now().millisecondsSinceEpoch;
    // serverName = "other"; // ERROR! Can't change late final
  }

  void showConnection() {
    print("Connected to: $connectionString");
    print("Connection ID: $_connectionId");
    print("Server: $serverName");
  }
}

class ExpensiveResource {
  String name;

  // This won't calculate until someone actually uses it
  late final String processedData = _processData();

  ExpensiveResource(this.name);

  String _processData() {
    print("Processing expensive data for $name...");
    // Simulate expensive operation
    return "Processed: ${name.toUpperCase()}";
  }
}

void main() {
  print("=== LATE KEYWORD EXAMPLE ===\n");

  print("--- Basic Late Usage ---");
  Person person = Person("Alice");

  // Set the late variable before using it
  person.setEmail("alice@example.com");
  print("Name: ${person.name}");
  print("Email: ${person.email}"); // Safe to use now

  print("\n--- Lazy Initialization ---");
  print("Person created, but displayName not calculated yet");
  print("First access to displayName:");
  print(person.displayName); // NOW it calculates
  print("Second access to displayName:");
  print(person.displayName); // Uses cached value, no recalculation

  print("\n--- Late Final Example ---");
  DatabaseConnection db = DatabaseConnection();
  db.connect("localhost", 5432);
  db.showConnection();

  print("\n--- Expensive Resource (Lazy Loading) ---");
  print("Creating resource...");
  ExpensiveResource resource = ExpensiveResource("ImportantData");
  print("Resource created (but data not processed yet)");

  print("Now accessing processed data:");
  print(resource.processedData); // Processing happens here
  print("Accessing again:");
  print(resource.processedData); // Uses cached result
}
