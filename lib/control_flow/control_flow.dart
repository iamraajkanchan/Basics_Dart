class ControlFlow {
  void switchWithBreak(int variable) {
    switch (variable) {
      case 1:
        print("switchWithBreak :: This is One");
        // break is optional since the latest Dart version.
        break;
      case 2:
        print("switchWithBreak :: This is Two");
        break;
      case 3:
        print("switchWithBreak :: This is Three");
        break;
      default:
        print("switchWithBreak :: This is not a number!");
    }
  }

  void switchWithoutBreak(int variable) {
    int condition = variable;
    switch (condition) {
      case 1:
        print("switchWithoutBreak :: This is One");
      case 2:
        print("switchWithoutBreak :: This is Two");
      case 3:
        print("switchWithoutBreak :: This is Three");
      default:
        print("switchWithoutBreak :: This is not a number!");
    }
  }

  void switchWithTwoCombinedCondition(int variable) {
    switch (variable) {
      case 1:
        print("switchWithTwoCombinedCondition :: This is One");
      case 2:
      case 3:
        print("switchWithTwoCombinedCondition :: This is Two or Three");
      default:
        print("switchWithTwoCombinedCondition :: This is not a number!");
    }
  }
}
