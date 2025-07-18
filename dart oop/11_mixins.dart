// =================================================================
// JUST MIXINS
// =================================================================

/*
 * 📖 WHAT ARE MIXINS?
 
 *  MIXIN: A way to share code between classes without inheritance
 *         Like adding extra abilities to a class - "mix in" new features
 *         Uses the 'mixin' keyword to create reusable code blocks
 
 *  WITH: The keyword to add a mixin to a class
 *        Like saying "this class comes WITH these extra abilities"
 *        Can use multiple mixins: 'with Mixin1, Mixin2'
 
 * 🤔 WHY MIXINS?: Some animals walk, some crawl, some fly - but not all
 *               You can't put walk() in Animal class because snakes don't walk!
 *               Mixins let you pick and choose abilities
 
 * ⚠️ IMPORTANT: If 2 mixins have the same method, the last one wins
 *             Like if both CanWalkMixin and CanSwimMixin have a method called move(),
 *             the one from CanSwimMixin will be used if both are mixed in
 
 & 🔑 KEY CONCEPTS:
 * mixin = reusable code that can be mixed into classes
 * 'with' keyword adds mixin abilities to a class
 * Animals get only the movement they actually use
 * More flexible than putting everything in parent class
 * Can use multiple mixins: 'with CanWalkMixin, CanSwimMixin'
 * Last mixin wins if there are method name conflicts
 
 ^ ✅ WHY MIXINS ARE BETTER:
 * Each animal gets ONLY the abilities it needs
 * Code is reused without forcing unwanted methods
 * More flexible than single inheritance
 * Avoid "god classes" with too many methods
 * Mix and match capabilities as needed
 
 ! ❌ INHERITANCE PROBLEMS MIXINS SOLVE:
 * Can't put fly() in Animal - not all animals fly
 * Can't put swim() in Animal - not all animals swim
 * Single inheritance limitation (only one parent)
 * Forced methods that don't make sense for all children
 
 ~ 🌟 REAL WORLD COMPARISON:
 * Inheritance: 'A house IS A building'
 * Mixin: 'A house WITH electricity, WITH plumbing'
 * You can mix and match features exactly as needed!
 */

// Base animal class - just the basics that ALL animals have
class Animal {
  String name;

  Animal(this.name);

  void eat() {
    print("$name is eating...");
  }

  void sleep() {
    print("$name is sleeping...");
  }
}

// Mixin for animals that can walk
mixin CanWalkMixin {
  void walk() {
    print("Walking on legs... step, step, step!");
  }
}

// Mixin for animals that crawl
mixin CanCrawlMixin {
  void crawl() {
    print("Crawling on belly... slither, slither!");
  }
}

// Mixin for animals that can swim
mixin CanSwimMixin {
  void swim() {
    print("Swimming... splash, splash!");
  }
}

// Dog can walk and swim
class Dog extends Animal with CanWalkMixin, CanSwimMixin {
  Dog(super.name);

  void bark() {
    print("$name says: Woof! Woof!");
  }
}

// Snake can only crawl (no legs!)
class Snake extends Animal with CanCrawlMixin {
  Snake(super.name);

  void hiss() {
    print("$name says: Hissss!");
  }
}

// Duck can walk and swim (lucky duck!)
class Duck extends Animal with CanWalkMixin, CanSwimMixin {
  Duck(super.name);

  void quack() {
    print("$name says: Quack! Quack!");
  }
}

// Fish can only swim
class Fish extends Animal with CanSwimMixin {
  Fish(super.name);

  void blowBubbles() {
    print("$name blows bubbles: glub glub!");
  }
}

void main() {
  print("=== MIXINS EXAMPLE ===\n");

  print("--- Creating Animals ---");
  Dog buddy = Dog("Buddy");
  Snake slither = Snake("Slither");
  Duck daffy = Duck("Daffy");
  Fish nemo = Fish("Nemo");

  print("\n--- What ALL Animals Can Do ---");
  buddy.eat();
  slither.sleep();

  print("\n--- Dog Abilities (Walk + Swim) ---");
  buddy.bark();
  buddy.walk(); // From CanWalkMixin
  buddy.swim(); // From CanSwimMixin

  print("\n--- Snake Abilities (Only Crawl) ---");
  slither.hiss();
  slither.crawl(); // From CanCrawlMixin
  // slither.walk(); //! ERROR! Snake doesn't have CanWalkMixin

  print("\n--- Duck Abilities (Walk + Swim) ---");
  daffy.quack();
  daffy.walk(); // From CanWalkMixin
  daffy.swim(); // From CanSwimMixin

  print("\n--- Fish Abilities (Only Swim) ---");
  nemo.blowBubbles();
  nemo.swim(); // From CanSwimMixin
  // nemo.walk();  //! ERROR! Fish doesn't have CanWalkMixin
}
