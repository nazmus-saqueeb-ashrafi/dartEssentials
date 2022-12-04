void test() async {
  print("We are TESTING LIST, SET, MAP");

  final shoppingList = ["soap", "deo"]; // List
  final mixedSetEg = {"harry", 1}; // Set<Object> = cannot contain duplicates
  final person = {
    // Map
    'age': 20,
    'name': "Rob",
  };

  person['name'] = 'Mike';

  print(person['name']);

  print(shoppingList.length);
  shoppingList.add("glue");
}
