// extensions ----------
class Person {
  final String firstName;
  final String lastName;
  Person(this.firstName, this.lastName);
}

extension FullName on Person {
  String get fullName => '$firstName $lastName';
}

void test() {
  print("We are TESTING EXTENSION");

  final person1 = Person("Nazmus", "Ashrafi");
  print(person1.fullName);
}


// async functions -----------
int multiplyTwo(int a, int b) => a * b; // synchoronous operation

Future<int> multiplyTwoHeavy(int a, int b) {
  return Future.delayed(const Duration(seconds: 3), (() => a * b));
} // async operation

/* marking async means this function can execute commands that do not 
return immediately */
void test() async {
  print("We are TESTING ASYNCHRONOUS FUNCTION");
  final result = await multiplyTwoHeavy(10, 15);
  print(result);
}


// stream -------------
// an asynchronous pipe of data
Stream<String> getName() {
  return Stream.periodic(const Duration(seconds: 1), (value) {
    return "Foo";
  });
}

void test() async {
  print("We are TESTING STREAM");

  await for (final value in getName()) {
    print(value); // returns "Foo" every 1 sec
  }
}
