class RelationalOperator {
  void checkForBothNullVariable() {
    int? a;
    int? b;
    print("checkForBothNullVariable :: Boolean value of a == b: ${a == b}");
  }

  void checkForOneNullVariable() {
    int? a = 10;
    int? b;
    print("checkForOneNullVariable :: Boolean value of a == b: ${a == b}");
  }

}