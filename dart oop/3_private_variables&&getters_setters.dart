// =================================================================
// PRIVATE VARIABLES & GETTERS/SETTERS
// =================================================================

/*
 * 📖 WHAT ARE PRIVATE VARIABLES & GETTERS/SETTERS?
 
 * 🔒 PRIVATE VARIABLES: Variables that can only be accessed within the same class
 *                   Like having a personal diary that only you can read
 *                   In Dart, you make variables private by starting with _ (underscore)
 
 * 🌍 PUBLIC VARIABLES: Variables that can be accessed from anywhere
 *                  Like information you share publicly on social media
 *                  Normal variables without _ are public
 
 * 🛡️ ENCAPSULATION: The practice of keeping some data hidden and controlling access
 *               Like having locks on your house - you control who can enter
 *               This is a core principle of Object-Oriented Programming
 
 *  GETTER: A method that retrieves (gets) the value of a private variable
 *        Like asking a guard to show you what's in a secure room
 *        Uses the 'get' keyword followed by method name
 
 * 📤 SETTER: A method that changes (sets) the value of a private variable
 *        Like asking a guard to put something in a secure room
 *        Uses the 'set' keyword followed by method name
 
 & � KEY CONCEPTS:
 * Private variables start with underscore (_)
 * They can only be accessed within the same class
 * Getters allow safe reading of private variables
 * Setters allow controlled modification of private variables
 * You can add validation in setters to prevent invalid data
 * They maintain encapsulation while providing access
 * Called like properties, not methods (no parentheses)
 
 ^ ✅ BENEFITS:
 * Data protection from unauthorized access
 * Data validation (check if values are valid before setting)
 * Prevents accidental modification of important values
 * Forces controlled access through methods
 * Computed properties (calculate values on demand)
 * Maintains data integrity and consistency
 * Better code organization and security
 
 ! ❌ WHAT HAPPENS WITHOUT PRIVACY:
 * Anyone can change your data directly
 * No control over what values are set
 * Hard to track where data changes happen
 * More prone to bugs and errors
 
 ~ 🌟 REAL WORLD EXAMPLES:
 * Bank account balance (private, only bank can modify through getters/setters)
 * User password (private, hidden from others)
 * Internal calculations (private, implementation details)
 * Medical records (private, only authorized access)
 */

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
  print("=== PRIVATE VARIABLES & GETTERS/SETTERS EXAMPLE ===\n");

  print("--- Bank Account Example ---");
  BankAccount account = BankAccount("Alice", 1000.0);

  // ✅ This works - using getters and setters
  print("Owner: ${account.owner}");
  print("Balance: \$${account.balance}"); // Using getter
  print("Status: ${account.status}"); // Using computed getter

  account.balance = 1500.0; // Using setter
  print("New balance: \$${account.balance}");
  print("New status: ${account.status}");

  account.balance = -100.0; // This will fail safely
  print("After invalid set: \$${account.balance}");

  account.balance = 15000.0; // VIP level
  print("VIP balance: \$${account.balance}");
  print("VIP status: ${account.status}");

  // ❌ This would cause an ERROR if uncommented:
  // print(account._balance); // Cannot access private variable directly!
  // account._balance = 999999; // Cannot modify private variable directly!
  print("\n Task 4: Private Variables & Getters/Setters\n");
  test3();
}

// =================================================================
// PRACTICE TASK
// =================================================================

/*
 * TASK: Create a "Student" class combining private variables and getters/setters
 * 
 * Requirements:
 * 1. Create a class called "Student" with these PRIVATE properties:
 *    - _name (String)
 *    - _age (int)
 *    - _grade (double) // GPA from 0.0 to 4.0
 *    - _credits (int) // Number of credits earned
 * 
 * 2. Create a constructor that takes all parameters
 * 
 * 3. Create getters and setters for each property with validation:
 *    - name: getter and setter (setter should not allow empty strings)
 *    - age: getter and setter (setter should only allow ages 16-100)
 *    - grade: getter and setter (setter should only allow 0.0-4.0)
 *    - credits: getter and setter (setter should only allow positive values)
 * 
 * 4. Create a computed getter called "status" that returns:
 *    - "Freshman" if credits < 30
 *    - "Sophomore" if credits < 60
 *    - "Junior" if credits < 90
 *    - "Senior" if credits >= 90
 * 
 * 5. Create a computed getter called "honorStatus" that returns:
 *    - "Summa Cum Laude" if grade >= 3.9
 *    - "Magna Cum Laude" if grade >= 3.7
 *    - "Cum Laude" if grade >= 3.5
 *    - "Good Standing" if grade >= 2.0
 *    - "Probation" if grade < 2.0
 * 
 * 6. In a test function, create a student and test all getters/setters
 *    including invalid values to see the validation in action
 * 
 * This task combines:
 * - Private variables for data protection
 * - Getters and setters with validation
 * - Computed properties
 * - Real-world business logic
 */
class Student {
  String _name;
  int _age;
  double _grade;
  int _credits;

  Student(this._name, this._age, this._grade, this._credits);

  set name(String name) {
    if (name.isNotEmpty) {
      _name = name;
    } else {
      print("Name cannot be empty!");
    }
  }

  String get name => _name;

  set age(int age) {
    if (age >= 16 && age <= 100) {
      _age = age;
    } else {
      print('Age must be between 16 and 100');
    }
  }

  int get age => _age;

  set grade(double grade) {
    if (grade >= 0.0 && grade <= 4.0) {
      _grade = grade;
    } else {
      print('invalid grade');
    }
  }

  double get grade => _grade;

  set credits(int credits) {
    if (credits >= 0) {
      _credits = credits;
    } else {
      print('credits cant be negative');
    }
  }

  int get credits => _credits;

  String get status {
    if (_credits < 30) return "Freshman";
    if (_credits < 60) return "Sophomore";
    if (_credits < 90) return "Junior";
    return "Senior";
  }

  String get honorStatus {
    if (_grade >= 3.9) return "Summa Cum Laude";
    if (_grade >= 3.7) return "Magna Cum Laude";
    if (_grade >= 3.5) return "Cum Laude";
    if (_grade >= 2.0) return "Good Standing";
    return "Probation";
  }
}

void test3() {
  Student st1 = Student("ahmed", 17, 4.0, 90);

  st1.name = "ali";
  print(st1.name);

  st1.age = 14;
  print(st1.age);

  st1.grade= 3.9;
  print(st1.grade);

  st1.credits = 80;
  print(st1.credits);

  print(st1.honorStatus);
  print(st1.status); 
}
