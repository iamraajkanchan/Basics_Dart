import 'dart:io';
import 'dart:isolate';
import 'dart:math';

import 'package:cli/projectUtility.dart';

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

class GeneratorExample {
  void simulate() async {
    createIterableStream();
    addSeparation(100);
    // createPeriodicStream();
    addSeparation(100);
    final numbersFromStream = createRandomNumbersFromStream();
    await for (final number in numbersFromStream) {
      print("GeneratorExample :: simulate :: Stream Numbers : $number");
    }
    addSeparation(100);
    final numbersFromIterable = createRandomNumbersFromIterable();
    for(final number in numbersFromIterable) {
      print("GeneratorExample :: simulate :: iterableNumber : $number");
    }
    addSeparation(100);
  }

  // Stream is used for asynchronous task. It is an asynchronous generator. To mark a method
  // that returns asynchronous stream, you must mention async* before the body of the method
  // and to return a value from this method, you must yield the value that you want to return.
  Stream<int> createRandomNumbersFromStream() async* {
    final random = Random();
    for (var i = 1; i < 100; i++) {
      await Future.delayed(Duration(seconds: 1));
      yield random.nextInt(i);
    }
  }

  void createPeriodicStream() async {
    final numberSequence =
        Stream<int>.periodic(const Duration(seconds: 10), (count) => ++count);
    numberSequence.forEach((element) => print(
        "GeneratorExample :: createPeriodicStream :: element : $element"));
  }

  void createIterableStream() {
    final doubleNumbers =
        Stream<double>.fromIterable(const [1.1, 20.45, 78.63, 24.78]);
    doubleNumbers.forEach((element) => print(
        "GeneratorExample :: createIterableStream, doubleNumber : $element"));
  }

  // Iterable is used for synchronous task. It is a synchronous generator. To mark a method
  // that returns synchronous iterable, you must mention sync* before the body of the method
  // and to return a value from this method, you must yield the value that you want to return.
  Iterable<int> createRandomNumbersFromIterable() sync* {
    final random = Random();
    for (var i = 1; i < 10; i++) {
      sleep(Duration(seconds: 1));
      yield random.nextInt(i);
    }
  }
}
