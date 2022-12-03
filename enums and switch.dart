// catagorize related items under an enumeration
enum PersonName { firstName, lastName, maidenName }

void test(PersonName personName) {
  print("We are TESTING ENNUMERATIONS and SWITCH");

  print(PersonName.firstName.name); // firstname

  switch (personName) {
    case PersonName.firstName:
      print("Nazmus");
      break; // breaks out and continues to the next statement after print
    // return; // takes you out of the test func
    case PersonName.lastName:
      print("Ashrafi");
      break;
    case PersonName.maidenName:
      print("LL Cool J");
      break;
    default:
  }
}

//-------------------------------------------------

test(PersonName.maidenName);
