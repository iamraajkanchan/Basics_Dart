import 'package:cli/projectUtility.dart';

abstract class FirstAbstract {
  void firstMethod();

  // You can have private methods in an abstract class but that method will not
  // be called by an object of its inherited/implemented class outside the file.
  void _firstPrivateMethod();
}

abstract class SecondAbstract {
  void secondMethod();
}

abstract class ThirdAbstract {
  void thirdMethod();
}

class AbstractImplementer implements FirstAbstract, SecondAbstract {
  @override
  void firstMethod() {
    print("AbstractImplementer :: FirstAbstract :: firstMethod : implemented");
  }

  @override
  void _firstPrivateMethod() {
    print(
        "AbstractImplementer :: FirstAbstract :: _firstPrivateMethod : implemented");
  }

  @override
  void secondMethod() {
    print(
        "AbstractImplementer :: SecondAbstract :: secondMethod : implemented");
  }
}

// Dart doesn't support multiple inheritance so can extend only one class.
//
class AbstractExtender extends FirstAbstract
    implements SecondAbstract, ThirdAbstract {
  @override
  void firstMethod() {
    print("AbstractExtender :: FirstAbstract :: firstMethod : extended");
  }

  @override
  void _firstPrivateMethod() {
    print(
        "AbstractExtender :: FirstAbstract :: _firstPrivateMethod : extended");
  }

  @override
  void secondMethod() {
    print("AbstractExtender :: SecondAbstract :: secondMethod : implemented");
  }

  @override
  void thirdMethod() {
    print("AbstractExtender :: ThirdAbstract :: thirdMethod :: implemented");
  }
}

class AbstractSimulator {
  final _abstractImplementer = AbstractImplementer();
  final _abstractExtender = AbstractExtender();

  void simulateAbstractionThroughImplement() {
    _abstractImplementer.firstMethod();
    addSeparation(100);
    // _firstPrivateMethod is a private method and it is available to call
    // because you are calling the method inside the same file.
    _abstractImplementer._firstPrivateMethod();
    addSeparation(100);
    _abstractImplementer.secondMethod();
    addSeparation(100);
  }

  void simulateAbstractionThroughExtend() {
    addSeparation(100);
    _abstractExtender.firstMethod();
    addSeparation(100);
    _abstractExtender.secondMethod();
    addSeparation(100);
  }
}
