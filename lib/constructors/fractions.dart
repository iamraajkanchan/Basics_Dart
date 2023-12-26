class FractionsWithPrivateProperties {
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
}

class FractionsWithPublicProperties {
  final int? nominator;
  int? denominator;

  FractionsWithPublicProperties({required this.nominator, this.denominator}) {
    _setDefaultDenominator();
  }

  void _setDefaultDenominator() {
    denominator = 1;
  }
}
