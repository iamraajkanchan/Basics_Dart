abstract class Fraction {
  void showFraction();

  void showInFractionForm();
}

class FractionsWithPrivateProperties extends Fraction {
  late int? _nominator;
  late int? _denominator;

  // Note you cannot make the property as named parameter
  // {[this._nominator, this._denominator]} on the private properties, but you make the property
  // as optional positional parameter ([this._nominator, this._denominator])
  FractionsWithPrivateProperties(this._nominator, this._denominator) {
    _setDefaultDenominator();
  }

  // As Dart doesn't support method overloading / constructor overloading you have to use
  // the concept of named constructor.
  FractionsWithPrivateProperties.oneHalf() : this(1, 2);

  // This is an example of named constructor
  FractionsWithPrivateProperties.fromString(String fraction) {
    List<String> inputString = fraction.split("/");
    _nominator = int.parse(inputString.first);
    _denominator = int.parse(inputString.last);
  }

  void _setDefaultDenominator() {
    _denominator = 1;
  }

  @override
  void showFraction() {
    print(
        "FractionsWithPrivateProperties :: showFraction :: result : ${_nominator! / _denominator!}");
  }

  @override
  void showInFractionForm() {
    print("$_nominator/$_denominator");
  }
}

class FractionsWithPublicProperties extends Fraction {
  int? nominator;
  int? denominator;

  FractionsWithPublicProperties({required this.nominator, this.denominator});

  // As Dart doesn't support method overloading or constructor overloading.
  // You have to use the concept of a named constructor.
  // As the default constructor of this class has used the concept of named parameter,
  // you have to use the syntax 'this(nominator: number, denominator: 1)'.
  // Otherwise, You could have had to use the syntax 'this(number, 1)'
  FractionsWithPublicProperties.whole(int number)
      : this(nominator: number, denominator: 1);

  // This is an example of named constructor
  FractionsWithPublicProperties.fromString(String fraction) {
    List<String> inputString = fraction.split("/");
    nominator = int.parse(inputString.first);
    denominator = int.parse(inputString.last);
  }

  @override
  void showFraction() {
    print(
        "FractionsWithPublicProperties :: showFraction :: result : ${nominator! / denominator!}");
  }

  @override
  void showInFractionForm() {
    print("$nominator/$denominator");
  }
}
