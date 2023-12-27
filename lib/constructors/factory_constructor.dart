import 'dart:core';

class FactoryConstructor {
  // If the _nameList weren't a static member, it would be created every time that an object
  // of FactoryConstructor is instantiated. It'd be a waste of memory and performance problem.
  // In this way we guaranteed that there's an unique list created only once.
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
