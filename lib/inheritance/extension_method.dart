import 'package:cli/constructors/fractions.dart';

extension FractionExt on String {
  Fraction toFraction(nominator, denominator) =>
      FractionsWithPrivateProperties(nominator, denominator);
}

class ExtensionMethod {
  void simulate() {
    final firstFraction = "12/13".toFraction(12, 13);
    print("ExtensionMethod :: firstFraction : ${firstFraction.toFraction()}");
  }
}
