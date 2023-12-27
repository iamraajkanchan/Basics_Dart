import 'dart:core';

class FactoryConstructor {
  // If the _nameList weren't a static member, it would be created every time that an object
  // of FactoryConstructor is instantiated. It'd be a waste of memory and performance problem.
  // In this way we guaranteed that there's an unique list created only once.
  // You can use const or final to declare a static member.
  static final List<String> _nameList = [];

  // Note: A factory constructor always returns an instance of a class,
  // so you have to return an instance of a class.
  // Note: Instance members can't be accessed from a factory constructor. So you have had to
  // make the list as static
  factory FactoryConstructor(String name) {
    if (!_nameList.contains(name)) {
      _nameList.add(name);
    }
    return FactoryConstructor._default();
  }

  // Below is a named constructor called _default. This is private constructor so it cannot be
  // called from outside the file.
  FactoryConstructor._default() {
    print("FactoryConstructor :: This is the default constructor");
    for (final name in _nameList) {
      print("FactoryConstructor :: default :: name : $name");
    }
  }
}

class AnotherFactoryConstructor {
  // You can't use const to declare an instance member.
  // You can only use final to declare an instance member
  final int _a;

  // This is a private constructor which cannot be called from outside.
  AnotherFactoryConstructor._(this._a);

  void getA() {
    print("AnotherFactoryConstructor :: getA :: a : $_a");
  }

  factory AnotherFactoryConstructor(int a) {
    final multiply = a * 3;
    return AnotherFactoryConstructor._(multiply);
  }
}
