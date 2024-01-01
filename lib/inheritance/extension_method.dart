import 'package:cli/constructors/fractions.dart';

extension FractionExt on String {
  bool isFraction() => contains("/");

  Fraction toPrivateFraction() =>
      FractionsWithPrivateProperties.fromString(this);

  Fraction toPublicFraction() => FractionsWithPublicProperties.fromString(this);
}

class ExtensionMethod {
  void simulate() {
    var stringForPrivateFraction = "12/13";
    if (stringForPrivateFraction.isFraction()) {
      final firstPrivateFraction = stringForPrivateFraction.toPrivateFraction();
      firstPrivateFraction.showInFractionForm();
    }
    var stringForPublicFraction = "7/8";
    if (stringForPublicFraction.isFraction()) {
      final firstPublicFraction = stringForPublicFraction.toPublicFraction();
      firstPublicFraction.showInFractionForm();
    }
  }
}
