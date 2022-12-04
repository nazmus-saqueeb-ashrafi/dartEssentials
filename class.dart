// Class = Grouping of various related functionalities into one packagable piece of data.
class LivingThing {
  void breathe() {
    print("breathing");
  }
}

class Person extends LivingThing {
  Person(this.name);
  final String name;

  void run() {
    print("running");
  }
}

void test() {
  print("We are TESTING CLASSES");

  final person1 = Person("nazmus");
  person1.run();
  print(person1.name);
  person1.breathe();
}

/* Abstract class
- cannot be instantiated
- can only be extended by other classes 

*/

abstract class LivingThing {
  void breathe() {
    print("breathing");
  }
}

class Person extends LivingThing {
  
}

/* Factory constructor
*/

class Person {
  Person(this.name);
  final String name;

  factory Person.lastName() { // can also return instrance of different class
    return Person('Ashrafi');
  }
}

void test() {
  print("We are TESTING CLASSES");

  final person1 = Person.lastName();
  print(person1.name);
}

