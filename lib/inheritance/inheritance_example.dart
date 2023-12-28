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

abstract class Fruit {
  late String name;
}

class Apple extends Fruit {
  Apple() {
    super.name = "Apple";
  }
}

class Mango extends Fruit {
  Mango() {
    super.name = "Mango";
  }
}

class Banana extends Fruit {
  Banana() {
    super.name = "Banana";
  }
}

abstract class Mammal {
  abstract String name;

  void eat(covariant Fruit f);
}

class Human extends Mammal {
  @override
  late String name;

  Human() {
    name = "Human";
  }

  @override
  void eat(Fruit f) {
    print("$name is eating ${f.name}");
  }
}

class Elephant extends Mammal {
  @override
  late String name;

  Elephant() {
    name = "Elephant";
  }

  @override
  void eat(Fruit f) {
    print("$name is eating ${f.name}");
  }
}

class Monkey extends Mammal {
  @override
  late String name;

  Monkey() {
    name = "Monkey";
  }

  @override
  void eat(Banana f) {
    print("$name is eating ${f.name}");
  }
}

class CovariantSimulator {
  final _human = Human();
  final _elephant = Elephant();
  final _monkey = Monkey();
  final _apple = Apple();
  final _mango = Mango();
  final _banana = Banana();

  void simulate() {
    addSeparation(100);
    _human.eat(_mango);
    addSeparation(100);
    _elephant.eat(_apple);
    addSeparation(100);
    _monkey.eat(_banana);
  }
}
