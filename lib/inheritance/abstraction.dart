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

class FirstBodyLessClass {
  void firstMethod() {}

  void firstMethodWithBody() {
    print("FirstBodyLessClass :: firstMethodWithBody");
  }
}

class SecondBodyLessClass {
  void secondMethod() {}

  void secondMethodWithBody() {
    print("SecondBodyLessClass :: secondMethodWithBody");
  }
}

class ThirdBodyLessClass {
  void thirdMethod() {}
}

// Note: If you implement a class then you must implement every method of
// the base class be it either a body or body less method.
// Note: If you extend a class then you won't have to inherit every method of
// the base class. It's your choice to override any method you like;
class AbstractBodyLessImplementer extends FirstBodyLessClass
    implements SecondBodyLessClass, ThirdBodyLessClass {
  @override
  void firstMethod() {
    print(
        "AbstractBodyLessImplementer :: FirstBodyLessClass :: firstMethod : extended ");
  }

  @override
  void secondMethod() {
    print(
        "AbstractBodyLessImplementer :: SecondBodyLessClass :: secondMethod : implemented");
  }

  @override
  void secondMethodWithBody() {
    print(
        "AbstractBodyLessImplementer :: SecondBodyLessClass :: secondMethodWithBody : implemented");
  }

  @override
  void thirdMethod() {
    print(
        "AbstractBodyLessImplementer :: ThirdBodyLessClass :: thirdMethod : implemented");
  }
}

class AbstractSimulator {
  final _abstractImplementer = AbstractImplementer();
  final _abstractExtender = AbstractExtender();
  final _abstractBodyLessImplementer = AbstractBodyLessImplementer();

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

  void simulateAbstractionThroughBodyLessClass() {
    addSeparation(100);
    _abstractBodyLessImplementer.firstMethod();
    addSeparation(100);
    _abstractBodyLessImplementer.firstMethodWithBody();
    addSeparation(100);
    _abstractBodyLessImplementer.secondMethod();
  }
}
