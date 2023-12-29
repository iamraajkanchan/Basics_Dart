import 'package:cli/projectUtility.dart';

mixin class Walk {
  void walk() {
    print("Walk :: walk : walking");
  }
}

mixin class Breathe {
  void breathe() {
    print("Breathe :: breathe : breathing");
  }
}

mixin class Eat {
  void eat() {
    print("Eat :: eat : eating");
  }
}

mixin Code on Human {
  void code() => print("Code: code : coding");
}

mixin Swim {
  void swim() => print("Swim : swim : swimming");
}

class Human with Walk, Breathe, Eat, Swim {
  final String _name;
  final String _surname;

  const Human(this._name, this._surname);

  void printName() => print("$_name $_surname");
}

class Developer extends Human with Code {
  final String _devName;
  final String _devSurname;

  const Developer(this._devName, this._devSurname)
      : super(_devName, _devSurname);
}

class MixinSimulator {
  final developer = Developer("Philip", "Edison");

  void showDevQualities() {
    addSeparation(100);
    developer.printName();
    addSeparation(100);
    developer.code();
  }
}
