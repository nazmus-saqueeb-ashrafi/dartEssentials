  print("We are TESTING NULL SAFETY");

  // null safety
  List<String?>? names = ["Nazmus", "Ashrafi", null];
  names = null;

  // ?? choose first non null value (null aware operator)
  String? firstName = null;
  String? mName = "Shulo";
  String? lastName = "Rahim";

  final firstNonNull = firstName ?? mName ?? lastName;
  print(firstNonNull); // Shulo

  // ??= check if initially null and then assign, if not null dont assign
  String? resultName = firstName;
  resultName ??= lastName;
  print(resultName); // Rahim

  //(IMP) ?. conditional access to properties
  List<String>? names2 = null;
  final length = names2?.length ?? 0;
  print(length); // 0
