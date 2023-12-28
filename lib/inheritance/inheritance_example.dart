import '../projectUtility.dart';

class BaseClass {
  double returnDoubleValue(double a) => a * 0.5;
}

class ChildClass extends BaseClass {
  @override
  double returnDoubleValue(double a) => a * 0.25;

  double returnDoubleFromSuperValue(double a) {
    final original = super.returnDoubleValue(a);
    return original * 0.25;
  }
}

class InheritanceSimulator {
  final BaseClass baseDerivedFromBase = BaseClass();
  final BaseClass baseDerivedFromChild = ChildClass();

  // Since Dart 2.9, implicit down casts are not allowed.
  // That's why the following example throws compile time error.
  // ChildClass childDerivedFromBase = BaseClass();
  final ChildClass childDerivedFromChild = ChildClass();

  void simulateDoubleValue() {
    addSeparation(100);
    print(baseDerivedFromBase.returnDoubleValue(100));
    addSeparation(100);
    print(baseDerivedFromChild.returnDoubleValue(100));
    addSeparation(100);
    print(childDerivedFromChild.returnDoubleValue(100));
    addSeparation(100);
  }

  void simulateDoubleFromSuperValue() {
    addSeparation(100);
    print(childDerivedFromChild.returnDoubleFromSuperValue(100));
  }
}
