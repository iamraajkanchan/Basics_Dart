class NullTypeExample {
  void howToDeclareNonNullableVariable() {
    int nullInteger;
    /* You cannot print or even use the nullInteger because it is not initialized */
    // Uncomment the below three lines and you will get a compile time error.
    /*
    if (nullInteger == 0) {
      print("Value of nullInteger: $nullInteger");
    }
    */
    int nonNullInteger = 0;
    if (nonNullInteger == 0) {
      print("howToDeclareNonNullableVariable :: Value of nonNullInteger: $nonNullInteger");
    }
  }
  void howToDeclareNullableVariable() {
    int? nullableInteger;
    print("howToDeclareNullableVariable :: Value of nullableInteger: $nullableInteger");
    String? firstName;
    String? firstNameInitial = firstName?[0];
    print("howToDeclareNullableVariable :: Value of firstNameInitial: $firstNameInitial");
    firstName = "Albert Einstein";
    firstNameInitial = firstName[0];
    print("howToDeclareNullableVariable :: Value of firstNameInitial: $firstNameInitial");
    // '!' is the bang operator. It is used to assign a nullable variable to a non-nullable variable.
    // Note: If you use the bang operator and when it will throw an exception and interrupt the execution.
    String nonNullableFirstNameInitial = firstNameInitial;
    print("howToDeclareNullableVariable :: Value of the nonNullableFirstNameInitial: $nonNullableFirstNameInitial");
  }

  void useDefaultNullValueCondition() {
    int? nullableInteger = 10;
    int nonNullableInteger = nullableInteger ?? 0;
    print("useDefaultNullValueCondition :: Value of nonNullable: $nonNullableInteger");
    double? nullableDouble;
    double nonNullableDouble = nullableDouble ?? 0.0;
    print("useDefaultNullValueCondition :: Value of nonNullableDouble: $nonNullableDouble");
  }
}
