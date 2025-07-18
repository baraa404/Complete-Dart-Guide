// =================================================================
// JUST CLASSES - THE BASICS
// =================================================================

/*
 * THE OBJECT CLASS IN DART
 
 * In Dart, there's a special class called "Object" that is the parent of ALL classes.
 * Every class you create automatically extends Object, even if you don't write it.
 * It's like the ultimate ancestor - every single thing in Dart comes from Object.
 * Object provides basic methods like toString(), hashCode, and == operator.
 */

/*
 * WHAT ARE OBJECTS AND CLASSES?
 
 * In the real world, you have things like cars, people, phones - these are OBJECTS.
 * Each object has properties (like color, name, size) and can do actions (like drive, talk, ring).
 
 * In programming, we create digital versions of these real-world things using CLASSES and OBJECTS.
 * Think of it like this: if you want to make cookies, you need a cookie cutter (CLASS) 
 * to create actual cookies (OBJECTS).
 */

/*
 * CORE DEFINITIONS:
 
 * CLASS: A blueprint or template for creating objects
 *        Like a cookie cutter - defines the shape, but isn't the cookie itself
 
 * OBJECT: An instance of a class - the actual "thing" created from the blueprint
 *         Like the actual cookie made from the cookie cutter
 
 * CONSTRUCTOR: A special method that creates and initializes objects
 *              Like a factory worker who sets up each new object
 
 & KEY CONCEPTS:
 * Class = Blueprint
 * Object = Thing created from blueprint
 * Properties = Data the object holds
 * Methods = Actions the object can do
 */

class Person {
  // Properties (variables that belong to the class)
  String name;
  int age;

  // Constructor (creates new objects)
  Person(this.name, this.age);

  // Method (function that belongs to the class)
  void introduce() {
    print("Hi, I'm $name and I'm $age years old");
  }
}

void main() {
  print("=== BASIC CLASS EXAMPLE ===\n");

  // Creating objects from the class
  Person person1 = Person("Alice", 25);
  Person person2 = Person("Bob", 30);

  // Using the objects
  person1.introduce();
  person2.introduce();

  // Accessing properties
  print("\n${person1.name} is ${person1.age} years old");
  print("${person2.name} is ${person2.age} years old");

  //task1
  test1();
}

// =================================================================
// PRACTICE TASK
// =================================================================

/*
 * TASK: Create a "Book" class to practice the concepts you just learned
 * 
 * Requirements:
 * 1. Create a class called "Book" with the following properties:
 *    - title (String)
 *    - author (String)
 *    - pages (int)
 * 
 * 2. Add a constructor that takes all three properties as parameters
 * 
 * 3. Create a method called "getInfo()" that prints:
 *    "The book '[title]' by [author] has [pages] pages"
 * 
 * 4. Create a method called "isLongBook()" that returns true if the book
 *    has more than 300 pages, false otherwise
 * 
 * 5. In the main function (or create a new one), create 2-3 Book objects
 *    and test both methods
 * 
 * This task will help you practice:
 * - Creating classes with multiple properties
 * - Writing constructors
 * - Creating methods that print information
 * - Creating methods that return boolean values
 * - Creating and using multiple objects
 * 
 * Try to complete this task before moving to the next file!
 */
class Book {
  String title;
  String author;
  int pages;

  Book(this.title, this.author, this.pages);

  void getInfo() {
    print("The book $title by $author has $pages pages");
  }

  bool isLongBook() {
    if (pages > 300) {
      return true;
    } else
      return false;
  }
}

void  test1(){
  Book book1 =Book("de book", "almomon", 400);

  book1.getInfo();
  print(book1.isLongBook());
}