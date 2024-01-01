class NumberGroup implements Comparable<NumberGroup> {
  final int _firstNumber;
  final int _secondNumber;

  const NumberGroup(this._firstNumber, this._secondNumber);

  int getSum() => _firstNumber + _secondNumber;

  @override
  int compareTo(NumberGroup other) {
    // If current instance is smaller than the enquired instance than return -1
    if (getSum() < other.getSum()) return -1;
    // If current instance is larger than the enquired instance than return 1
    if (getSum() > other.getSum()) return 1;
    // If current instance is equal to the enquired instance return 0
    return 0;
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is NumberGroup) {
      final numberGroup = other;
      return runtimeType == numberGroup.runtimeType &&
          _firstNumber == numberGroup._firstNumber &&
          _secondNumber == numberGroup._secondNumber;
    } else {
      return false;
    }
  }

  @override
  int get hashCode => _firstNumber.hashCode + _secondNumber.hashCode;

  @override
  String toString() => "[$_firstNumber, $_secondNumber]";
}

class CompareSimulator {
  void simulate() {
    final firstNumberGroup = NumberGroup(3, 5);
    final secondNumberGroup = NumberGroup(3, 4);
    final thirdNumberGroup = NumberGroup(5, 4);
    List<NumberGroup> numberGroups = [
      firstNumberGroup,
      secondNumberGroup,
      thirdNumberGroup
    ];
    // You are able to apply the sort method because the class
    // NumberGroup implements Comparable<T> abstract interface class.
    numberGroups.sort();
    for (final group in numberGroups) {
      print(group.toString());
    }
  }
}
