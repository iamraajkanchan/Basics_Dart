import 'dart:math';

class FutureExample {
  void simulate() {}

  Future<int> processData(var firstParam, var secondParam) {
    var value = 0;
    try {
      for (var i = 0; i < firstParam; i++) {
        for (var j = 0; j < firstParam * secondParam; j++) {
          Future.delayed(Duration(seconds: 1));
          value = pow(i, j) as int;
        }
      }
      return Future<int>.value(value);
    } on Exception catch (error) {
      return Future.error(error);
    }
  }
}
