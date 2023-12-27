abstract class Fraction {
  void showFraction();
}

class FractionsWithPrivateProperties extends Fraction {
  final int? _nominator;
  int? _denominator;

  // Note you cannot make the property as optional named parameter
  // {[this._nominator, this._denominator]} on the private properties, but you make the property
  // as optional positional parameter ([this._nominator, this._denominator])
  FractionsWithPrivateProperties(this._nominator, this._denominator) {
    _setDefaultDenominator();
  }

  void _setDefaultDenominator() {
    _denominator = 1;
  }

  @override
  void showFraction() {
    print(
        "FractionsWithPrivateProperties :: showFraction :: result : ${_nominator! / _denominator!}");
  }
}

class FractionsWithPublicProperties extends Fraction {
  final int? nominator;
  int? denominator;

  FractionsWithPublicProperties({required this.nominator, this.denominator});

  FractionsWithPublicProperties.initDenominator(int number)
      : nominator = number,
        denominator = 1;

  @override
  void showFraction() {
    print(
        "FractionsWithPublicProperties :: showFraction :: result : ${nominator! / denominator!}");
  }
}
