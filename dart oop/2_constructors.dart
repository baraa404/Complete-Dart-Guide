// =================================================================
// JUST CONSTRUCTORS
// =================================================================

/*
 * WHAT ARE CONSTRUCTORS?
 
 * CONSTRUCTOR: A special method that creates and initializes objects
 *              Like a factory worker who sets up each new object
 
 * NAMED CONSTRUCTOR: Alternative way to create objects with different setup
 *                    Like having different factory workers for different product types
 *                    Example: Car() for new cars, Car.used() for used cars
 
 & KEY CONCEPTS:
 * Constructor runs automatically when object is created
 * Can have multiple named constructors for different scenarios
 * Named parameters make constructors more readable
 * Required parameters must be provided, optional ones have defaults
 
 ^ CONSTRUCTOR TYPES:
 * Usage:
 * - Basic : ClassName(parameters)
 * - Named : ClassName.name(parameters)
 * - With {} : Named parameters (can be required/optional)
 * Examples:
 * - Basic: Book(title, author, pages)
 * - Named: Book.short(title, author) - sets pages automatically
 * - With named parameters: Phone({required brand, model, price})
 * 
 *  () by default is required
  * // [] optinall
  * // {} named optional
 */



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
  print("=== CONSTRUCTOR EXAMPLES ===\n");

  print("--- Basic Constructor ---");
  Book book1 = Book("1984", "George Orwell", 328);
  book1.info();

  print("\n--- Named Constructors ---");
  Book book2 = Book.short("Quick Read", "Fast Author");
  Book book3 = Book.long("Epic Novel", "Detailed Writer");
  book2.info();
  book3.info();

  print("\n--- Named Parameters ---");
  Phone phone1 = Phone(brand: "Apple", model: "iPhone", price: 999.99);
  Phone phone2 = Phone(
    brand: "Samsung",
    model: "Galaxy",
  ); // price defaults to 0
  phone1.specs();
  phone2.specs();

  test2(); // Call the test function for Car class
}

// =================================================================
// PRACTICE TASK
// =================================================================

/*
 * TASK: Create a "Car" class to practice different constructor types
 * 
 * Requirements:
 * 1. Create a class called "Car" with the following properties:
 *    - brand (String)
 *    - model (String)
 *    - year (int)
 *    - price (double)
 * 
 * 2. Create THREE different constructors:
 *    a) Basic constructor: Car(brand, model, year, price)
 *    
 *    b) Named constructor "Car.used()" that:
 *       - Takes brand, model, and year as parameters
 *       - Automatically sets price to 15000.0 (default used car price)
 *    
 *    c) Named constructor "Car.luxury()" that:
 *       - Takes brand and model as parameters
 *       - Automatically sets year to 2024 and price to 80000.0
 * 
 * 3. Create a method called "displayInfo()" that prints:
 *    "[year] [brand] [model] - $[price]"
 * 
 * 4. Create a constructor with named parameters "Car.custom()" that:
 *    - All parameters are named and optional except brand (required)
 *    - Default values: model = "Unknown", year = 2020, price = 25000.0
 * 
 * 5. In a test function, create one car using each constructor type
 *    and call displayInfo() for each
 * 
 * This task will help you practice:
 * - Basic constructors
 * - Named constructors with automatic value assignment
 * - Named parameters with required/optional fields
 * - Default parameter values
 * - Constructor initialization lists
 * 
 * Try to complete this task to master constructor concepts!
 */

class Car {
  String brand;
  String model;
  int year;
  double price;

  Car(this.brand, this.model, this.year, this.price);
  Car.used(this.brand, this.model, this.year) : price = 15000.0;
  Car.luxury(this.brand, this.model) : year = 2024, price = 80000.0;

  void displayInfo() {
    print("$year $brand $model - \$$price");
  }

  Car.custom({
    required this.brand,
    this.model = "Unkown",
    this.year = 2020,
    this.price = 25000.0,
  });
}
void test2(){
  Car normalcar =Car("Toyota", "Camry", 2022, 30000.0);
  normalcar.displayInfo();
  Car usedcar = Car.used("Audi", "A4", 2020);
  usedcar.displayInfo();
  Car luxurycar = Car.luxury("BMW", "5 Series");
  luxurycar.displayInfo();
  Car customcar = Car.custom(brand: "Tesla");
  customcar.displayInfo();

}
